package com.althmMedia.ALTHM;
import android.media.*;
import android.os.*;
import java.io.*;

public class LiveActivity extends MainActivity
{
	MediaPlayer mediaPlayer = new MediaPlayer();
	
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.livelay);
	}
	
	public void onStart()
	{
		super.onStart();
	}
	
	public void onResume()
	{
		super.onResume();
		live();
	}
	
	public void onPause()
	{
		super.onPause();
	}
	
	public void onStop()
	{
		super.onStop();
	}
	
	@Override
	public void onDestroy()
	{
		super.onDestroy();
		if (mediaPlayer != null) mediaPlayer.release();
	}

	public void live()
	{
		new Thread(new Runnable()
		{
		public void run()
			{
				String url = "http://althm.dyndns.org:8080/broadwave.mp3";
				mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
				try
				{
				mediaPlayer.setDataSource(url);
				}
				catch (IOException e)
				{}
				catch (SecurityException e)
				{}
				catch (IllegalArgumentException e)
				{}
				catch (IllegalStateException e)
				{}
				try
				{
					mediaPlayer.prepare();
				}
				catch (IOException e)
				{}
				catch (IllegalStateException e)
				{}
				mediaPlayer.start();
			}
		}).start();
	}
}
