package ${packageName}.ui.fragments;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.arch.lifecycle.ViewModelProvider;
import android.arch.lifecycle.ViewModelProviders;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${packageName}.R;
import ${packageName}.views.${activityName}View;
import ${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel;
import ${packageName}.databinding.Fragment${activityName}Binding;
import ${packageName}.data.api.${apiName};
import ${packageName}.app.MyApp;
import ${packageName}.di.components.Dagger${activityName}FragmentComponent;
import ${packageName}.di.modules.${activityName}FragmentModule;
import ${packageName}.base.fragment.BaseFragment;
import javax.inject.Inject;
import android.support.annotation.Nullable;
import ${packageName}.base.dialogFragment.BaseBottomSheetDialogFragment;



public class ${activityName}Fragment extends <#if isBottomSheet> BaseBottomSheetDialogFragment </#if> <#if !isBottomSheet> BaseFragment </#if>  implements ${activityName}View {
    <#if hasApi> @Inject public ${apiName} api; </#if>
    @Inject public ViewModelProvider.Factory factory;
    private Fragment${activityName}Binding layoutBinding;
    private ${activityName}ViewModel viewModel;
	

        @Override
    public int setContentView() {
        return R.layout.${layoutName};
    }

       @Override
    public void iniViews(Bundle bundle) {
     layoutBinding= DataBindingUtil.bind(view);
          Dagger${activityName}FragmentComponent.builder()
           <#if addDepandancy>     .appComponent(MyApp.get(getActivity()).getAppComponent()) </#if>
                .${activityName[0]?lower_case}${activityName[1..]}FragmentModule(new ${activityName}FragmentModule (getActivity().getApplication()))
                .build().inject(this); 
        viewModel= ViewModelProviders.of(this,factory).get(${activityName}ViewModel.class);
        viewModel.attachView(this);
    }
    
    @Override
    public ${activityName}Fragment getFragment(){
       return this;
     }
}
