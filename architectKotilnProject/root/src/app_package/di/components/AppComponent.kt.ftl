package ${packageName}.di.components

import ${packageName}.app.MyApp
<#if hasApi>import ${packageName}.data.api.${apiName}
import ${packageName}.di.modules.ApiModule</#if>
<#if hasDb>import ${packageName}.data.db.TestDao
import ${packageName}.di.modules.RoomModule</#if>
import ${packageName}.di.modules.AppModule
import ${packageName}.di.modules.ExecutorsModule
import ${packageName}.utils.executors.AppExecutors
import ${packageName}.viewModels.base.BaseViewModelFactory
import dagger.Component
import javax.inject.Singleton


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/
@Singleton
@Component(modules = arrayOf(AppModule::class<#if hasApi>,ApiModule::class</#if>,ExecutorsModule::class<#if hasDb>,RoomModule::class</#if>))
interface AppComponent {
    <#if hasDb>fun getTestDao():TestDao</#if>
    fun getAppExecute(): AppExecutors
    <#if hasApi>fun getBaseApi():BaseApi</#if>
    fun getFactory():BaseViewModelFactory
    fun inject(app:MyApp)
}
