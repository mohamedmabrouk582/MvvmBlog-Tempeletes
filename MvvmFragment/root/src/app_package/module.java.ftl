package ${packageName}.di.modules;



import android.app.Application;

import ${packageName}.di.scopes.${activityName}FragmentScope;
import android.app.Application;
import android.arch.lifecycle.ViewModelProvider;
import ${packageName}.data.api.${apiName};
import ${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel;
import dagger.Module;
import dagger.Provides;

@Module
public class ${activityName}FragmentModule {
    private Application application;

    public ${activityName}FragmentModule(Application application) {
        this.application = application;
    }

    @${activityName}FragmentScope
    @Provides
    public Application getApplication() {
        return application;
    }
    
    @${activityName}FragmentScope
    @Provides
    public ViewModelProvider.Factory getFactory(<#if hasApi> ${apiName} api </#if>){
        return new ${activityName}ViewModel.${activityName}ViewModelFactory(application <#if hasApi>,api</#if>);
    }
    
}
