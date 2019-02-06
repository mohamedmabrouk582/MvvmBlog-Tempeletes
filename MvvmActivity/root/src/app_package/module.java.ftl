package ${packageName}.di.modules;



import android.app.Application;

import ${packageName}.di.scopes.${activityName}ActivityScope;
import android.app.Application;
import android.arch.lifecycle.ViewModelProvider;
import ${packageName}.data.api.${apiName};
import ${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel;
import dagger.Module;
import dagger.Provides;

@Module
public class ${activityName}ActivityModule {
    private Application application;

    public ${activityName}ActivityModule(Application application) {
        this.application = application;
    }

    @${activityName}ActivityScope
    @Provides
    public Application getApplication() {
        return application;
    }
    
    @${activityName}ActivityScope
    @Provides
    public ViewModelProvider.Factory getFactory(<#if hasApi> ${apiName} api </#if>){
        return new ${activityName}ViewModel.${activityName}ViewModelFactory(application <#if hasApi>,api </#if>);
    }
    
}
