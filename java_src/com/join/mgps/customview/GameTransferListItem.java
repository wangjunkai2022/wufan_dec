package com.join.mgps.customview;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EViewGroup;
import org.androidannotations.annotations.ViewById;
@EViewGroup(R.layout.game_transfer_list_item)
/* loaded from: classes3.dex */
public class GameTransferListItem extends RelativeLayout {

    /* renamed from: l  reason: collision with root package name */
    private static final String f45556l = GameTransferListItem.class.getSimpleName();
    @ViewById(R.id.game_transfer_item_game_name_txt)

    /* renamed from: a  reason: collision with root package name */
    TextView f45557a;
    @ViewById(R.id.game_transfer_item_game_size_txt)

    /* renamed from: b  reason: collision with root package name */
    TextView f45558b;
    @ViewById(R.id.game_transfer_list_item_transfer_status_txt)

    /* renamed from: c  reason: collision with root package name */
    TextView f45559c;
    @ViewById(R.id.game_transfer_list_item_transfer_status_chk)

    /* renamed from: d  reason: collision with root package name */
    CheckBox f45560d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    FrameLayout f45561e;
    @ViewById(R.id.game_transfer_item_game_icon_img)

    /* renamed from: f  reason: collision with root package name */
    SimpleDraweeView f45562f;

    /* renamed from: g  reason: collision with root package name */
    GameTransferBean f45563g;

    /* renamed from: h  reason: collision with root package name */
    int f45564h;

    /* renamed from: i  reason: collision with root package name */
    boolean f45565i;

    /* renamed from: j  reason: collision with root package name */
    SparseArray<GameTransferBean> f45566j;

    /* renamed from: k  reason: collision with root package name */
    Context f45567k;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z3 = !GameTransferListItem.this.f45560d.isChecked();
            GameTransferListItem.this.f45560d.setChecked(z3);
            String unused = GameTransferListItem.f45556l;
            StringBuilder sb = new StringBuilder();
            sb.append("changeCheckboxStatus: ");
            sb.append(z3);
            sb.append("位置");
            sb.append(GameTransferListItem.this.f45564h);
            GameTransferListItem.this.f45563g.setSelectedTransfer(z3);
            GameTransferListItem gameTransferListItem = GameTransferListItem.this;
            gameTransferListItem.f45566j.setValueAt(gameTransferListItem.f45564h, gameTransferListItem.f45563g);
            org.greenrobot.eventbus.c.f().o(GameTransferListItem.this.f45563g);
        }
    }

    public GameTransferListItem(Context context) {
        super(context);
        this.f45567k = context;
    }

    public void b(int i2, SparseArray<GameTransferBean> sparseArray, boolean z3) {
        if (sparseArray == null) {
            return;
        }
        this.f45564h = i2;
        this.f45566j = sparseArray;
        GameTransferBean valueAt = sparseArray.valueAt(i2);
        this.f45563g = valueAt;
        this.f45557a.setText(valueAt.getGameName());
        TextView textView = this.f45558b;
        textView.setText(this.f45563g.getSize() + "M");
        this.f45565i = this.f45563g.isSelectedTransfer();
        MyImageLoader.d(this.f45562f, R.drawable.main_normal_icon, this.f45563g.getIconUrl());
        StringBuilder sb = new StringBuilder();
        sb.append("bind: 图片地址");
        sb.append(this.f45563g.getIconUrl());
        this.f45560d.setEnabled(false);
        this.f45560d.setChecked(this.f45565i);
        this.f45561e.setOnClickListener(null);
        this.f45561e.setEnabled(!z3);
        setOnClickListener(null);
        a aVar = new a();
        this.f45561e.setClickable(false);
        if (this.f45563g.getTransferStatus() == -1) {
            setOnClickListener(aVar);
        }
        c();
    }

    void c() {
        int transferStatus = this.f45563g.getTransferStatus();
        if (transferStatus == -1) {
            this.f45561e.setVisibility(0);
        } else {
            this.f45561e.setVisibility(8);
            this.f45559c.setVisibility(0);
        }
        this.f45559c.setText("");
        if (transferStatus == 1) {
            this.f45559c.setText(R.string.waiting_status_game_transfer);
        } else if (transferStatus == 2) {
            TextView textView = this.f45559c;
            textView.setText(this.f45563g.getProgerss() + "%");
        } else if (transferStatus == 3) {
            this.f45559c.setText(R.string.transfer_success_status_game_transfer);
            this.f45559c.setTextColor(this.f45567k.getResources().getColor(R.color.blue_game_transfer));
        } else if (transferStatus == 4) {
            this.f45559c.setTextColor(SupportMenu.CATEGORY_MASK);
            this.f45559c.setText(R.string.transfer_failed_status_game_transfer);
        } else if (transferStatus != 5) {
        } else {
            this.f45559c.setText(R.string.transfer_zip_status_game_transfer);
        }
    }
}
