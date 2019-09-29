package ${packageName}.di.modules

import android.app.Application
import ${packageName}.app.MyApp
<#if hasApi>import ${packageName}.data.api.${apiName}</#if>
<#if hasDb>import ${packageName}.data.db.TestDao</#if>
import ${packageName}.utils.executors.AppExecutors
import ${packageName}.viewModels.base.BaseViewModelFactory
import dagger.Module
import dagger.Provides
import javax.inject.Singleton


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/
@Module
class AppModule(var myApp: MyApp){
    @Provides
    @Singleton
    fun viewModelFactory(<#if hasDb>testDao: TestDao,</#if>appExecutors: AppExecutors<#if hasApi>,api:${apiName}</#if>):BaseViewModelFactory =
 BaseViewModelFactory(<#if hasDb>testDao,</#if>appExecutors<#if hasApi>,api</#if>,getApp())

    @Provides
    @Singleton
    fun getApp():MyApp=myApp
}
