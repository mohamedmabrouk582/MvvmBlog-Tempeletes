<?xml version="1.0"?>
<recipe>
   <#if hasApi> <instantiate from="src/app_package/utils/network/Request.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/network/Request.kt" /> 

        <instantiate from="src/app_package/utils/network/RequestListener.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/network/RequestListener.kt" />   

       <instantiate from="src/app_package/data/api/BaseApi.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/api/${apiName}.kt" /> 

       <instantiate from="src/app_package/di/modules/ApiModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/ApiModule.kt" /> </#if>
     <#if hasDb>
        <instantiate from="src/app_package/di/modules/RoomModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/RoomModule.kt" />

       <instantiate from="src/app_package/data/db/TestDao.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/db/TestDao.kt" />

       <instantiate from="src/app_package/data/db/TestDb.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/db/TestDb.kt" />

       <instantiate from="src/app_package/data/models/Test.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/models/Test.kt" />
     </#if>

	<instantiate from="src/app_package/app/MyApp.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/app/MyApp.kt" />

        <instantiate from="src/app_package/utils/SharedKeys.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/SharedKeys.kt" />

        <instantiate from="src/app_package/utils/SharedManager.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/SharedManager.kt" />

        <instantiate from="src/app_package/utils/network/RequestCoroutines.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/network/RequestCoroutines.kt" />
 
	<instantiate from="src/app_package/utils/executors/DiskIOThreadExecutor.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/executors/DiskIOThreadExecutor.kt" />

	<instantiate from="src/app_package/utils/executors/AppExecutors.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/executors/AppExecutors.kt" />

	<instantiate from="src/app_package/utils/executors/MainThreadExecutor.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/executors/MainThreadExecutor.kt" />
        
        <instantiate from="src/app_package/ui/base/BaseFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/base/BaseFragment.kt" />

        <instantiate from="src/app_package/ui/base/BaseActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/base/BaseActivity.kt" />


        <instantiate from="src/app_package/ui/base/BaseDialogFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/base/BaseDialogFragment.kt" />
       
        <instantiate from="src/app_package/ui/base/BaseBottomSheetFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/base/BaseBottomSheetFragment.kt" />


	<instantiate from="src/app_package/viewModels/base/BaseViewModel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/base/BaseViewModel.kt" />

	<instantiate from="src/app_package/viewModels/base/BaseVmodel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/base/BaseVmodel.kt" />

	<instantiate from="src/app_package/viewModels/base/BaseViewModelFactory.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/base/BaseViewModelFactory.kt" />

        <instantiate from="src/app_package/utils/network/CheckNetwork.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/network/CheckNetwork.kt" />

         <instantiate from="src/app_package/utils/network/OnCheckConnection.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/network/OnCheckConnection.kt" />

         <instantiate from="src/app_package/utils/ValidationUtils.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/ValidationUtils.kt" />
        
         <instantiate from="src/app_package/utils/DataBindAdapterUtils.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/utils/DataBindAdapterUtils.kt" />  

       <instantiate from="src/app_package/callBacks/BaseCallBack.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/callBacks/BaseCallBack.kt" />


      <instantiate from="src/app_package/di/modules/AppModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/AppModule.kt" />


      <instantiate from="src/app_package/di/modules/ExecutorsModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/ExecutorsModule.kt" />


      <instantiate from="src/app_package/di/components/AppComponent.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/components/AppComponent.kt" />

    <instantiate from="res/layout/snackbarview.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/snackbar_view.xml" />
    

    <instantiate from="res/navgraph.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/navigation/nav_graph.xml" />

     
    <instantiate from="res/layout/time_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/time_layout.xml" />

    
     <instantiate from="res/layout/date_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/date_layout.xml" />
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

   <merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    
    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
   

</recipe>
