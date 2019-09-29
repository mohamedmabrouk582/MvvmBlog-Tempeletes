<?xml version="1.0" encoding="utf-8"?>
<layout
        xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto">
    <data>
        <import type="android.view.View"/>
        <variable
                name="${BrName}"
                type="${packageName}.viewModels.${viewModelPackage}.${activityName}ViewModel"/>
    </data>

<androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">
<#if hasLoader>
    <androidx.recyclerview.widget.RecyclerView
            android:layout_width="0dp"
            android:layout_height="0dp"
            app:layout_constraintEnd_toEndOf="parent"
            android:layout_marginEnd="8dp"
            android:layout_marginRight="8dp"
            android:id="@+id/recyclerView"
            app:layout_constraintHorizontal_bias="0.0"
            app:layout_constraintStart_toStartOf="parent"
            android:layout_marginLeft="8dp"
            android:layout_marginStart="8dp"
            android:layout_marginBottom="8dp"
            app:layout_constraintBottom_toBottomOf="parent"
            android:layout_marginTop="8dp"
            app:layout_constraintTop_toTopOf="parent"/>

    <ProgressBar
            android:visibility="@{${BrName}.loader?View.VISIBLE:View.GONE}"
            style="?android:attr/progressBarStyle"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:id="@+id/progressBar1"
            android:layout_marginEnd="8dp"
            android:layout_marginRight="8dp" app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent" android:layout_marginLeft="8dp"
            android:layout_marginStart="8dp" android:layout_marginBottom="8dp"
            app:layout_constraintBottom_toBottomOf="parent" android:layout_marginTop="8dp"
            app:layout_constraintTop_toTopOf="parent"/>
    <TextView
            android:text="@{${BrName}.error}"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            app:layout_constraintTop_toBottomOf="@+id/progressBar1"
            app:layout_constraintEnd_toEndOf="@+id/imageView"
            app:layout_constraintStart_toStartOf="@+id/imageView"
            android:layout_marginTop="16dp" android:layout_marginLeft="8dp"
            android:layout_marginStart="8dp"/>
    <ImageView
            android:onClick="@{() -> ${BrName}.retry()}"
            android:visibility="@{movieVm.error!=null?View.VISIBLE:View.GONE}"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:src="@drawable/ic_reload"
            android:id="@+id/imageView"
            app:layout_constraintEnd_toEndOf="@+id/progressBar1"
            app:layout_constraintStart_toStartOf="@+id/progressBar1"
            app:layout_constraintBottom_toBottomOf="@+id/progressBar1"
            app:layout_constraintTop_toTopOf="@+id/progressBar1"/>
      </#if>  

</androidx.constraintlayout.widget.ConstraintLayout>
</layout>
