package ${packageName}.di.components;

import ${packageName}.di.modules.${activityName}ActivityModule;
import ${packageName}.di.scopes.${activityName}ActivityScope;
import ${packageName}.ui.activities.${activityName}Activity;
import dagger.Component;




@${activityName}ActivityScope
@Component(<#if addDepandancy>dependencies = AppComponent.class </#if> ,modules = ${activityName}ActivityModule.class)
public interface ${activityName}ActivityComponent {
    void inject(${activityName}Activity activity);
}
