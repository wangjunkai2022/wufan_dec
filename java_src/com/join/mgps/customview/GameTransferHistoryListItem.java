package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EViewGroup;
import org.androidannotations.annotations.ViewById;
@EViewGroup(R.layout.game_transfer_list_item)
/* loaded from: classes3.dex */
public class GameTransferHistoryListItem extends RelativeLayout {

    /* renamed from: g  reason: collision with root package name */
    private static final String f45546g = GameTransferHistoryListItem.class.getSimpleName();
    @ViewById(R.id.game_transfer_item_game_name_txt)

    /* renamed from: a  reason: collision with root package name */
    TextView f45547a;
    @ViewById(R.id.game_transfer_item_game_size_txt)

    /* renamed from: b  reason: collision with root package name */
    TextView f45548b;
    @ViewById(R.id.game_transfer_list_item_transfer_status_txt)

    /* renamed from: c  reason: collision with root package name */
    TextView f45549c;
    @ViewById(R.id.game_transfer_item_game_icon_img)

    /* renamed from: d  reason: collision with root package name */
    SimpleDraweeView f45550d;

    /* renamed from: e  reason: collision with root package name */
    GameTransferBean f45551e;

    /* renamed from: f  reason: collision with root package name */
    Context f45552f;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferHistoryListItem gameTransferHistoryListItem = GameTransferHistoryListItem.this;
            GameTransferBean gameTransferBean = gameTransferHistoryListItem.f45551e;
            if (gameTransferBean != null) {
                String c4 = gameTransferHistoryListItem.c(gameTransferBean.getId());
                if (d2.h(c4)) {
                    return;
                }
                GameTransferHistoryListItem.this.a(c4);
            }
        }
    }

    public GameTransferHistoryListItem(Context context) {
        super(context);
        this.f45552f = context;
    }

    void a(String str) {
        com.join.android.app.common.utils.a.g0(this.f45552f).y(this.f45552f, str);
    }

    public void b(GameTransferBean gameTransferBean) {
        if (gameTransferBean == null) {
            return;
        }
        this.f45551e = gameTransferBean;
        this.f45547a.setText(gameTransferBean.getGameName());
        TextView textView = this.f45548b;
        textView.setText(gameTransferBean.getSize() + "M");
        MyImageLoader.d(this.f45550d, R.drawable.main_normal_icon, this.f45551e.getIconUrl());
        StringBuilder sb = new StringBuilder();
        sb.append("bind:  gameName:::");
        sb.append(this.f45547a.getText().toString());
        sb.append("::gameSize:::");
        sb.append(this.f45548b.getText().toString());
        this.f45549c.setOnClickListener(null);
        this.f45549c.setOnClickListener(new a());
        d();
    }

    String c(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B == null) {
            return null;
        }
        return B.getGameZipPath();
    }

    void d() {
        int transferStatus = this.f45551e.getTransferStatus();
        this.f45549c.setVisibility(0);
        this.f45549c.setClickable(false);
        TextView textView = this.f45549c;
        new Color();
        textView.setBackgroundColor(Color.alpha(0));
        switch (transferStatus) {
            case 1:
                this.f45549c.setText(R.string.waiting_status_game_transfer);
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.black_game_transfer_game_size));
                return;
            case 2:
                TextView textView2 = this.f45549c;
                textView2.setText(this.f45551e.getProgerss() + "%");
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.blue_game_transfer));
                return;
            case 3:
                this.f45549c.setText(R.string.game_transfer_success);
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.blue_game_transfer));
                return;
            case 4:
                this.f45549c.setTextColor(SupportMenu.CATEGORY_MASK);
                this.f45549c.setText(R.string.transfer_failed_status_game_transfer);
                return;
            case 5:
            default:
                return;
            case 6:
                this.f45549c.setText(R.string.transfer_unzip_status_game_transfer);
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.blue_game_transfer));
                return;
            case 7:
                this.f45549c.setBackgroundResource(R.drawable.bg_game_transfer_install_app_txt);
                this.f45549c.setText(R.string.transfer_install_status_game_transfer);
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.app_green_color));
                this.f45549c.setClickable(true);
                return;
            case 8:
                this.f45549c.setTextColor(SupportMenu.CATEGORY_MASK);
                this.f45549c.setText(R.string.transfer_failed_status_game_transfer);
                return;
            case 9:
                this.f45549c.setText(R.string.transfer_success_status_game_transfer);
                this.f45549c.setTextColor(this.f45552f.getResources().getColor(R.color.blue_game_transfer));
                return;
        }
    }
}
