package ${packageName}.di.components;

import ${packageName}.di.modules.${activityName}FragmentModule;
import ${packageName}.di.scopes.${activityName}FragmentScope;
import ${packageName}.ui.fragments.${activityName}Fragment;
import dagger.Component;




@${activityName}FragmentScope
@Component(<#if addDepandancy>dependencies = AppComponent.class </#if> ,modules = ${activityName}FragmentModule.class)
public interface ${activityName}FragmentComponent {
    void inject(${activityName}Fragment fragment);
}
