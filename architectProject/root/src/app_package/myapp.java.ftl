package ${packageName}.app;

import android.app.Activity;
import android.app.Application;
import android.support.v4.app.FragmentActivity;

import ${packageName}.di.components.AppComponent;
import ${packageName}.di.components.DaggerAppComponent;
<#if hasApi>import ${packageName}.di.modules.ApiModule;</#if>
<#if hasDb> import ${packageName}.di.modules.RoomModule;</#if>
import ${packageName}.di.modules.AppModule;

public class MyApp extends Application {
    private AppComponent appComponent;
    @Override
    public void onCreate() {
        super.onCreate();
        appComponent= DaggerAppComponent.builder()
                .appModule(new AppModule(this))
                <#if hasApi>.apiModule(new ApiModule("${baseUrl}"))</#if>
                <#if hasDb>.roomModule(new RoomModule(getApplicationContext()))</#if>  
                .build();
        appComponent.inject(this);
    }

    public static MyApp get(Activity activity){
        return (MyApp) activity.getApplication();
    }

    public static MyApp get(FragmentActivity activity){
        return (MyApp) activity.getApplication();
    }

    public AppComponent getAppComponent() {
        return appComponent;
    }
}
