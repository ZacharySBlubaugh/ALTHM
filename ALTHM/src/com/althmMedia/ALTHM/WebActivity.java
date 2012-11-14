package com.althmMedia.ALTHM;
import android.app.*;
import android.content.*;
import android.net.*;
import android.os.*;
import android.view.*;
import android.webkit.*;

public class WebActivity extends MainActivity
{
	WebView webView;
	WebSettings webSettings;
	WebViewClient myWebViewClient;
	final Activity MyActivity = this;
	
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		getWindow().requestFeature(Window.FEATURE_PROGRESS);
		getWindow().setFeatureInt(Window.FEATURE_PROGRESS, Window.PROGRESS_VISIBILITY_ON);
		setContentView(R.layout.weblay);
		
		try
		{
			webView = (WebView) findViewById(R.id.webview);
			webSettings = webView.getSettings();
			
			webSettings.setJavaScriptEnabled(true);
			webSettings.setEnableSmoothTransition(true);
			webSettings.setBuiltInZoomControls(true);
			webSettings.setSupportZoom(true);
			webView.getSettings().setUseWideViewPort(true);
			webView.setInitialScale(50);
			
			webView.setWebChromeClient(new WebChromeClient()
			{
				public void onProgressChanged(WebView view, int progress)
				{
					MyActivity.setTitle("Loading...");
					MyActivity.setProgress(progress * 100);
					if(progress == 100)
							MyActivity.setTitle(R.string.web_name);
				}
			});
			
			webView.setWebViewClient(new myWebViewClient()
			{
				@Override
				public void onReceivedError(WebView view, int errorCode, String description, String failingUrl)
				{
					
				}
				
				@Override
				public boolean shouldOverrideUrlLoading(WebView view, String url)
				{
					view.loadUrl(url);
					return true;
				}
			});
			
			webView.loadUrl("http://www.abundantlifehouse.com/Abundant_Life_-_The_House_of_Mercy/Home.html");
		}
		
		catch (Exception e)
		{
			
		}
	}
		
	public class myWebViewClient extends WebViewClient
	{
		@Override
		public boolean shouldOverrideUrlLoading(WebView view, String url)
		{
			if (Uri.parse(url).getHost().equals("www.abundantlifehouse.com"))
			{
				return false;
			}
			
			if (Uri.parse(url).getHost().equals("private.abundantlifehouse.com"))
			{
				return false;
			}
			
			if (Uri.parse(url).getHost().equals("althm.dyndns.org"))
			{
				return false;
			}

			Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
			startActivity(intent);
			return true;
		}
	}
}
