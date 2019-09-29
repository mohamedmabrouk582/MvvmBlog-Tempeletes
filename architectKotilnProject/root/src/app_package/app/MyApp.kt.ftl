package ${packageName}.app

import android.app.Activity
import android.app.Application
import androidx.fragment.app.FragmentActivity
import ${packageName}.di.components.AppComponent
import ${packageName}.di.components.DaggerAppComponent
<#if hasApi>import ${packageName}.di.modules.ApiModule </#if>
import ${packageName}.di.modules.AppModule
import ${packageName}.di.modules.ExecutorsModule
<#if hasDb>import ${packageName}.di.modules.RoomModule </#if>


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

class MyApp :Application() {
    lateinit var appComponent:AppComponent
    override fun onCreate() {
        super.onCreate()
        appComponent=DaggerAppComponent.builder()
            <#if hasApi>.apiModule(ApiModule("${baseUrl}"))</#if>
            .appModule(AppModule(this))
            .executorsModule(ExecutorsModule())
             <#if hasDb>.roomModule(RoomModule(this,"movies"))</#if>
            .build()
        appComponent.inject(this)
    }

    companion object {
        fun get(activity:Activity):MyApp=activity.application as MyApp
        fun get(activity:FragmentActivity):MyApp=activity.application as MyApp
    }

}
