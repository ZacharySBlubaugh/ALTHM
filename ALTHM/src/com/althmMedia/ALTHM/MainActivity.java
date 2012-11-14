package com.althmMedia.ALTHM;

import android.app.*;
import android.content.*;
import android.os.*;
import android.view.*;

public class MainActivity extends Activity
{
    @Override
    public void onCreate(Bundle savedInstanceState)
	{
        super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
    }
	
	public void onStart()
	{
		super.onStart();
	}
	
	public void onResume()
	{
		super.onResume();
	}
	
	public void web(View view)
	{
		Intent intent = new Intent(this, WebActivity.class);
		startActivity(intent);
	}
	
	public void live(View view)
	{
		Intent intent = new Intent(this, LiveActivity.class);
		startActivity(intent);
	}
	
	public void bible(View view)
	{
		Intent intent = new Intent(this, BibleActivity.class);
		startActivity(intent);
	}
}
