package ${packageName}.di.components;

import ${packageName}.app.MyApp;
import ${packageName}.base.RxBus;
<#if hasApi>
import ${packageName}.data.api.${apiName};
import ${packageName}.di.modules.ApiModule;</#if>
<#if hasDb>
import ${packageName}.di.modules.RoomModule;
import ${packageName}.data.db.MyDbOperation;
</#if>
import ${packageName}.di.modules.AppModule;

import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {AppModule.class <#if hasApi >, ApiModule.class </#if> <#if hasDb>,RoomModule.class </#if>})
public interface AppComponent {
   <#if hasApi> ${apiName} get${apiName}();</#if>
   <#if hasDb>MyDbOperation getDbOperation(); </#if>
    RxBus getRxBus();
    void inject(MyApp myApp);
}
