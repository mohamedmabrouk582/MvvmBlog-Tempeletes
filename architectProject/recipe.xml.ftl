<?xml version="1.0"?>
<recipe>
   <#if hasApi> <instantiate from="src/app_package/api/request.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/api/Request.java" /> 

        <instantiate from="src/app_package/api/requestlistener.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/api/RequestListener.java" />   

       <instantiate from="src/app_package/api.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/api/${apiName}.java" /> 

       <instantiate from="src/app_package/apimodule.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/ApiModule.java" /> </#if>
     <#if hasDb>
        <instantiate from="src/app_package/RoomModule.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/RoomModule.java" />

       <instantiate from="src/app_package/DateBaseOperation.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/db/MyDbOperation.java" />

       <instantiate from="src/app_package/EntityDao.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/db/MyAppDao.java" />

       <instantiate from="src/app_package/EntityDb.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/db/MyAppDb.java" />

       <instantiate from="src/app_package/Entity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/models/Test.java" />
     </#if>
        
        <instantiate from="src/app_package/dialogFragment/DatePickerFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/dialogFragment/DatePickerFragment.java" />
        
        <instantiate from="src/app_package/dialogFragment/TimePickerFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/dialogFragment/TimePickerFragment.java" />

	<instantiate from="src/app_package/myapp.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/app/MyApp.java" />
 
	<instantiate from="src/app_package/DiskIOThreadExecutor.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/DiskIOThreadExecutor.java" />

	<instantiate from="src/app_package/AppExecutors.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/AppExecutors.java" />
        
        <instantiate from="src/app_package/BaseFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/fragment/BaseFragment.java" />

        <instantiate from="src/app_package/BaseActivity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/activity/BaseActivity.java" />

	<instantiate from="src/app_package/MainThreadExecutor.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/MainThreadExecutor.java" />

	<instantiate from="src/app_package/base/baseviewmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/base/BaseViewModel.java" />

	<instantiate from="src/app_package/base/basevmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/base/BaseVmodel.java" />



        <instantiate from="src/app_package/dialogFragment/basedailogfragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/dialogFragment/BaseDailogFragment.java" />
       
        <instantiate from="src/app_package/dialogFragment/BaseBottomSheetDialogFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/dialogFragment/BaseBottomSheetDialogFragment.java" />

        <instantiate from="src/app_package/network/checknetwork.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/network/CheckNetwork.java" />

         <instantiate from="src/app_package/network/oncheckconnection.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/network/OnCheckConnection.java" />

         <instantiate from="src/app_package/vaildation/is.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/vaildation/Is.java" />

         <instantiate from="src/app_package/vaildation/vaildationuserinfo.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/vaildation/VaildationUserInfo.java" />
        
        <instantiate from="src/app_package/rxbus.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/RxBus.java" />  

       <instantiate from="src/app_package/View.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/views/BaseView.java" />


      <instantiate from="src/app_package/appmodule.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/AppModule.java" />

      <instantiate from="src/app_package/component.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/components/AppComponent.java" />

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
