package ${packageName}.ui.activites

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.LinearLayout
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.FragmentActivity
import androidx.lifecycle.ViewModelProviders
import androidx.paging.PagedList
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import ${packageName}.R
import ${packageName}.app.MyApp
import ${packageName}.callBacks.${activityName}CallBack
import ${packageName}.databinding.Activity${activityName}Binding
import ${packageName}.di.components.DaggerMovieComponent
import ${packageName}.ui.BaseActivity
import ${packageName}.utils.executors.AppExecutors
import ${packageName}.viewModels.base.BaseViewModelFactory
import ${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel
import kotlinx.android.synthetic.main.movie_list_activity.*
import javax.inject.Inject


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

class ${activityName}Activity :BaseActivity(),${activityName}CallBack {
    @Inject
    lateinit var factory:BaseViewModelFactory
    lateinit var layoutBinding:Activity${activityName}Binding
    private lateinit var viewModel:${activityName}ViewModel<${activityName}CallBack>

    companion object {
        fun start(context: Context){
            val intent=Intent(context,${activityName}Activity::class.java)
            context.startActivity(intent)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
         layoutBinding=DataBindingUtil.setContentView(this, R.layout.${layoutName})
        inject()
        initView()

    }

    override fun inject(){
        Dagger${activityName}ActivityComponent.builder()
            .appComponent(MyApp.get(this).appComponent).build().inject(this)
    }

   override fun initView(){
        viewModel=getViewModel(this,factory)
        viewModel.attachView(this)
        layoutBinding.movieVm=viewModel
    }


    private inline fun <reified T : BaseViewModel<${activityName}CallBack>> getViewModel(activity: FragmentActivity,factory:BaseViewModelFactory): T {
        return ViewModelProviders.of(activity,factory)[T::class.java]
    }

    override fun get${activityName}Activiy(): ${activityName}Activity =this

}
