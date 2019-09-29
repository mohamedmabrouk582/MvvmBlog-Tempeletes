package ${packageName}.viewModels.${viewModelPackage}

import android.app.Application
import androidx.databinding.ObservableBoolean
import androidx.databinding.ObservableField
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.Observer
import androidx.paging.DataSource
import androidx.paging.LivePagedListBuilder
import androidx.paging.PagedList
import ${packageName}.callBacks.${activityName}CallBack
<#if hasApi>
import ${packageName}.data.api.${apiName}
<#if hasPaging>
import ${packageName}.data.models.${dataModel}DataSource</#if>
</#if>
import ${packageName}.utils.executors.AppExecutors
import ${packageName}.utils.network.RequestListener
import ${packageName}.viewModels.base.BaseViewModel
import io.reactivex.disposables.CompositeDisposable


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

class ${activityName}ViewModel<v : ${activityName}CallBack>(application: Application<#if hasApi>,var api: ${apiName}</#if>,val appExecutors: AppExecutors) : BaseViewModel<v>(application) {
     <#if hasLoader>
    val loader:ObservableBoolean = ObservableBoolean()
    val error:ObservableField<String> = ObservableField()
    val compositeDisposable: CompositeDisposable= CompositeDisposable()

        <#if hasPaging>
        override fun reqPaging${dataModel}() {
        loader.set(true)
        error.set(null)
        val movieSousce= ${dataModel}DataSource(api,getApplication(),object :RequestListener<>{})

        val factory= object : DataSource.Factory<Int,${dataModel}>(){
            override fun create(): DataSource<Int, ${dataModel}> = movieSousce
        }
        showData(factory,${dataModel}DataSource.PAGE_SIZE)
    }
      private fun showData(factory:DataSource.Factory<Int,${dataModel}>,size:Int){
        val config= PagedList.Config.Builder()
            .setEnablePlaceholders(true)
            .setPageSize(size).build()
        val data=LivePagedListBuilder(factory,config).build()
        data.observe(view.get${activityName}Activiy(), Observer {
           
        })
    } </#if>

     fun retry(){

    }
  </#if>

    override fun onCleared() {
        super.onCleared()
        compositeDisposable.clear()
    }


}
