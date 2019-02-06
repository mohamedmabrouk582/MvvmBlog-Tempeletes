package ${packageName}.base.dialogFragment;

/*
 * Created By mabrouk on 20/01/19
 * Testing
 */

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TimePicker;
import ${packageName}.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TimePickerFragment extends DialogFragment {
    private static final String ARGS_TIME="time";
    public static final String EXTRA_Time = "time";
    private TimePicker mTimePicker;
    private static final String TITLE="TITLE";
    private static TimeListener mTimeListener;
    private Date date;
    public interface TimeListener{
        void callBack(int hour ,int minute,Date date);
    }


    //******** for return DatePicker Fragment *******//
    public static TimePickerFragment NewInstence(String title,Date date,TimeListener listener){
        Bundle bundle=new Bundle();
        bundle.putSerializable(ARGS_TIME, date);
        bundle.putString(TITLE,title);
        mTimeListener=listener;
        TimePickerFragment fragment=new TimePickerFragment();
        fragment.setArguments(bundle);
        return fragment;
    }

//    //***  for sending result from date  picker ***//
//    public void SendResult(int requestCode, Date date){
//        if (getTargetFragment()==null){
//            return ;
//        }
//        Intent intent=new Intent();
//        intent.putExtra(EXTRA_Time, date);
//        getTargetFragment().onActivityResult(getTargetRequestCode(), requestCode, intent);
//
//    }
    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        date=(Date)getArguments().getSerializable(ARGS_TIME);
        if (date==null)date=new Date();
        Calendar calendar=Calendar.getInstance();
        calendar.setTime(date);
        int Hour=calendar.get(Calendar.HOUR);
        int Minute=calendar.get(Calendar.MINUTE);
        View v= LayoutInflater.from(getActivity()).inflate(R.layout.time_layout,null);
        mTimePicker =v.findViewById(R.id.time_picker);
        return new AlertDialog.Builder(getActivity()).
                setView(v).
                setTitle("Time of Work:").
                setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                            @TargetApi(Build.VERSION_CODES.M)
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                int hour= mTimePicker.getCurrentHour();
                                int minute= mTimePicker.getCurrentMinute();
                                date.setHours(hour);
                                //  date.setTime(mTimePicker.get);
                                date.setMinutes(minute);
                              //  SendResult(Activity.RESULT_OK, date);
                                mTimeListener.callBack(hour,minute,date);
                            }
                        }
                ).create();
    }

    private String timeFormate(Date date){
        SimpleDateFormat format=new SimpleDateFormat("hh:mm a");
        return format.format(date);
    }
}
