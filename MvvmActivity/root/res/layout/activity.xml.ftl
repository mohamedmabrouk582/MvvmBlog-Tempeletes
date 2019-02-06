<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
     xmlns:app="http://schemas.android.com/apk/res-auto"
     xmlns:tools="http://schemas.android.com/tools" >
    <data>
        <import type="android.view.View"/>
        <variable name="${BrName}" type="${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel" />
    </data>
    <android.support.constraint.ConstraintLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent">

		<#if addToolbar><android.support.v7.widget.Toolbar
            android:id="@+id/${activityName[0]?lower_case}${activityName[1..]}_toolbar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:background="@color/colorPrimary"
            app:theme="@style/ThemeOverlay.AppCompat.Dark.ActionBar"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toTopOf="parent"/>
		</#if>

     <#if hasLoader>
      <FrameLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent">

            <android.support.v7.widget.RecyclerView
                android:id="@+id/${BrName}_recycler_view"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:layout_marginStart="30dp"
                android:layout_marginEnd="30dp"
                android:layout_marginBottom="5dp"
 <#if hasPaging>OnScrollListeners="@{${BrName}.plyingOnScrollListener}"</#if>
                android:visibility="@{${BrName}.error!=null || ${BrName}.loader?View.GONE:View.VISIBLE}"
                app:layoutManager="android.support.v7.widget.LinearLayoutManager" />

            <ProgressBar
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="center"
                android:indeterminate="true"
                android:indeterminateTint="@color/loader_color"
                android:indeterminateTintMode="src_atop"
                android:visibility="@{${BrName}.loader?View.VISIBLE:View.GONE}" />
            <ImageView
                android:visibility="@{${BrName}.error!=null?View.VISIBLE:View.GONE}"
                android:layout_gravity="center"
                android:layout_width="30dp"
                android:layout_height="30dp"
                android:src="@drawable/ic_loading"
                android:onClick="@{(v) ->${BrName}.retry(v)}"
                />
            <TextView
                android:layout_marginTop="35dp"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="center"
                android:text="@{${BrName}.error}" />
            <#if hasPaging>
            <ProgressBar
            android:layout_marginEnd="5dp"
            android:visibility="@{${BrName}.loadMore?View.VISIBLE:View.GONE}"
            android:layout_gravity="bottom|center"
            android:layout_width="30dp"
            android:layout_height="30dp"
            android:layout_marginBottom="10dp" />
            </#if>
        </FrameLayout>
        </#if>  
</android.support.constraint.ConstraintLayout>
</layout>
