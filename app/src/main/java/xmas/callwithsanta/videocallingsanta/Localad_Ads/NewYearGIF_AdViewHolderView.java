package xmas.callwithsanta.videocallingsanta.Localad_Ads;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import xmas.callwithsanta.videocallingsanta.R;

public class NewYearGIF_AdViewHolderView extends RecyclerView.ViewHolder {

    public ImageView appicon;
    public TextView appname;
    public RelativeLayout rel_cardList;
    public RelativeLayout ll_adl;

    public NewYearGIF_AdViewHolderView(View itemView) {
        super(itemView);
        appicon = (ImageView) itemView.findViewById(R.id.appicon);
        appname = (TextView) itemView.findViewById(R.id.appname);

        ll_adl = (RelativeLayout) itemView.findViewById(R.id.ll_adl);
    }
}