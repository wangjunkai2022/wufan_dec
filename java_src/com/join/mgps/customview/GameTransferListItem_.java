package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public final class GameTransferListItem_ extends GameTransferListItem implements i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    private boolean f45569m;

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f45570n;

    public GameTransferListItem_(Context context) {
        super(context);
        this.f45569m = false;
        this.f45570n = new i3.c();
        e();
    }

    public static GameTransferListItem d(Context context) {
        GameTransferListItem_ gameTransferListItem_ = new GameTransferListItem_(context);
        gameTransferListItem_.onFinishInflate();
        return gameTransferListItem_;
    }

    private void e() {
        i3.c c4 = i3.c.c(this.f45570n);
        i3.c.b(this);
        i3.c.c(c4);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (!this.f45569m) {
            this.f45569m = true;
            RelativeLayout.inflate(getContext(), R.layout.game_transfer_list_item, this);
            this.f45570n.a(this);
        }
        super.onFinishInflate();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f45557a = (TextView) aVar.internalFindViewById(R.id.game_transfer_item_game_name_txt);
        this.f45558b = (TextView) aVar.internalFindViewById(R.id.game_transfer_item_game_size_txt);
        this.f45559c = (TextView) aVar.internalFindViewById(R.id.game_transfer_list_item_transfer_status_txt);
        this.f45560d = (CheckBox) aVar.internalFindViewById(R.id.game_transfer_list_item_transfer_status_chk);
        this.f45561e = (FrameLayout) aVar.internalFindViewById(R.id.checkLayout);
        this.f45562f = (SimpleDraweeView) aVar.internalFindViewById(R.id.game_transfer_item_game_icon_img);
    }
}
