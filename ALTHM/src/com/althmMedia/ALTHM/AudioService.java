package com.althmMedia.ALTHM;
import android.app.*;
import android.content.*;
import android.media.*;
import android.os.*;
import java.io.*;

public class AudioService extends Service
{

	public IBinder onBind(Intent p1)
	{
		// TODO: Implement this method
		return null;
	}
	
	MediaPlayer mediaPlayer = new MediaPlayer();
	
	@Override
	public void onStartCommand()
	{
		live();
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
