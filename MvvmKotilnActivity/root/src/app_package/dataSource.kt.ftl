package ${packageName}.data.models

import android.content.Context
import androidx.lifecycle.MutableLiveData
import androidx.paging.PageKeyedDataSource
import ${packageName}.R
import ${packageName}.data.api.${apiName}
import ${packageName}.utils.network.Request
import ${packageName}.utils.network.RequestListener
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

class ${dataModel}DataSource(val api:${apiName},val context: Context,val listener: RequestListener) :PageKeyedDataSource<Int,${dataModel}>() {

    companion object {
        val PAGE_SIZE:Int=30
        val START_PAGE=1
    }

    override fun loadInitial(params: LoadInitialParams<Int>, callback: LoadInitialCallback<Int, ${dataModel}>){
     
    }

    override fun loadAfter(params: LoadParams<Int>, callback: LoadCallback<Int, ${dataModel}>) {
        

    }

    override fun loadBefore(params: LoadParams<Int>, callback: LoadCallback<Int, ${dataModel}>) {
        
    }
}
