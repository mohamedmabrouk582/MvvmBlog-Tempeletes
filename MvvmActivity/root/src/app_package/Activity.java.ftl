package ${packageName}.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.arch.lifecycle.ViewModelProvider;
import android.arch.lifecycle.ViewModelProviders;
import ${packageName}.R;
import ${packageName}.views.${activityName}View;
import ${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel;
import ${packageName}.databinding.Activity${activityName}Binding;
import ${packageName}.data.api.${apiName};
import ${packageName}.app.MyApp;
import ${packageName}.di.components.Dagger${activityName}ActivityComponent;
import ${packageName}.di.modules.${activityName}ActivityModule;
import ${packageName}.base.activity.BaseActivity;
import javax.inject.Inject;
import android.support.annotation.Nullable;



public class ${activityName}Activity extends BaseActivity implements ${activityName}View {
    <#if hasApi> @Inject public ${apiName} api; </#if>
    @Inject public ViewModelProvider.Factory factory;
    private Activity${activityName}Binding layoutBinding;
    private ${activityName}ViewModel viewModel;
	
	<#if addToolbar>
	
		private void initializeControls() {
	
        setSupportActionBar(binding.${activityName[0]?lower_case}${activityName[1..]}Toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);    	
	}	
	
	</#if>

        @Override
    public int setContentView() {
        return R.layout.${layoutName};
    }

    @Override
    public void iniViews() {
      layoutBinding= DataBindingUtil.setContentView(this,setContentView());
        Dagger${activityName}ActivityComponent.builder()
           <#if addDepandancy>     .appComponent(MyApp.get(this).getAppComponent()) </#if>
                .${activityName[0]?lower_case}${activityName[1..]}ActivityModule(new ${activityName}ActivityModule(getApplication()))
                .build().inject(this);
        viewModel= ViewModelProviders.of(this,factory).get(${activityName}ViewModel.class);
        viewModel.attachView(this);
      }


    @Override
    public ${activityName}Activity getActivity(){
     return this;
    }

}
