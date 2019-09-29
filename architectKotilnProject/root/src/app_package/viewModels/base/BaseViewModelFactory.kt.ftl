package ${packageName}.viewModels.base

import android.app.Application
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
<#if hasApi>import ${packageName}.data.api.${apiName}</#if>
<#if hasDb>import ${packageName}.data.db.TestDao</#if>
import ${packageName}.utils.executors.AppExecutors
import javax.inject.Inject
import javax.inject.Singleton


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

class BaseViewModelFactory(<#if hasDb>testDao: TestDao,</#if>val appExecutors: AppExecutors
<#if hasApi>,val api:BaseApi</#if>,val application:Application): ViewModelProvider.Factory {

    override fun <T : ViewModel?> create(modelClass: Class<T>): T {
      throw IllegalArgumentException("Your View Model Not Found")
    }
}
