package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public final class GameTransferHistoryListItem_ extends GameTransferHistoryListItem implements i3.a, i3.b {

    /* renamed from: h  reason: collision with root package name */
    private boolean f45554h;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f45555i;

    public GameTransferHistoryListItem_(Context context) {
        super(context);
        this.f45554h = false;
        this.f45555i = new i3.c();
        f();
    }

    public static GameTransferHistoryListItem e(Context context) {
        GameTransferHistoryListItem_ gameTransferHistoryListItem_ = new GameTransferHistoryListItem_(context);
        gameTransferHistoryListItem_.onFinishInflate();
        return gameTransferHistoryListItem_;
    }

    private void f() {
        i3.c c4 = i3.c.c(this.f45555i);
        i3.c.b(this);
        i3.c.c(c4);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (!this.f45554h) {
            this.f45554h = true;
            RelativeLayout.inflate(getContext(), R.layout.game_transfer_list_item, this);
            this.f45555i.a(this);
        }
        super.onFinishInflate();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f45547a = (TextView) aVar.internalFindViewById(R.id.game_transfer_item_game_name_txt);
        this.f45548b = (TextView) aVar.internalFindViewById(R.id.game_transfer_item_game_size_txt);
        this.f45549c = (TextView) aVar.internalFindViewById(R.id.game_transfer_list_item_transfer_status_txt);
        this.f45550d = (SimpleDraweeView) aVar.internalFindViewById(R.id.game_transfer_item_game_icon_img);
    }
}
