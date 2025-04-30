package com.papa91.arc.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.view.ToastUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SimulatorUploadDialog extends BaseDialog implements View.OnClickListener {
    private Button btn_ok;
    private ImageView iv_close;
    private OnOptionsListener listener;
    LinearLayout ll_roles;
    private int mLife;
    private int mMaxLife;
    private List<PaiWeiDataBean.RolesBean> roleBeans;
    private List<RoleViewHolder> roleList;
    private TextView tv_add;
    private TextView tv_content;
    private TextView tv_del;
    private TextView tv_life;
    private TextView tv_title;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public abstract class BaseViewHolder<T> implements View.OnClickListener {
        public T dataBean;
        public View mRootView;

        public BaseViewHolder(View view) {
            this.mRootView = view;
        }

        public abstract void init(T t3);

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.mRootView) {
                SimulatorUploadDialog.this.clearSelection();
                onSelected();
            }
        }

        public void onSelected() {
        }

        public void onUnselected() {
        }
    }

    /* loaded from: classes4.dex */
    public interface OnOptionsListener {
        void onClose();

        void onConfirm(int i2, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class RoleViewHolder extends BaseViewHolder<PaiWeiDataBean.RolesBean> {
        private TextView tv_title;

        public RoleViewHolder(View view) {
            super(view);
            this.tv_title = (TextView) view.findViewById(R.id.tv_title);
        }

        @Override // com.papa91.arc.dialog.SimulatorUploadDialog.BaseViewHolder
        public void onSelected() {
            super.onSelected();
            ((PaiWeiDataBean.RolesBean) this.dataBean).setChecked(true);
            this.tv_title.setBackgroundResource(R.drawable.shape_simulator_role_h);
            this.tv_title.setTextColor(Color.parseColor("#FFFFFFFF"));
        }

        @Override // com.papa91.arc.dialog.SimulatorUploadDialog.BaseViewHolder
        public void onUnselected() {
            super.onUnselected();
            ((PaiWeiDataBean.RolesBean) this.dataBean).setChecked(false);
            this.tv_title.setBackgroundResource(R.drawable.shape_simulator_role_n);
            this.tv_title.setTextColor(Color.parseColor("#FFC4C4C4"));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.papa91.arc.dialog.SimulatorUploadDialog.BaseViewHolder
        public void init(PaiWeiDataBean.RolesBean rolesBean) {
            this.dataBean = rolesBean;
            this.mRootView.setOnClickListener(this);
            this.tv_title.setText(rolesBean.getRole());
        }
    }

    public SimulatorUploadDialog(@NonNull Context context) {
        this(context, R.style.PspDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelection() {
        List<RoleViewHolder> list = this.roleList;
        if (list != null) {
            for (RoleViewHolder roleViewHolder : list) {
                roleViewHolder.onUnselected();
            }
        }
    }

    private void initView() {
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.tv_content = (TextView) findViewById(R.id.tv_content);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.btn_ok = (Button) findViewById(R.id.btn_ok);
        this.ll_roles = (LinearLayout) findViewById(R.id.ll_roles);
        this.tv_del = (TextView) findViewById(R.id.tv_del);
        this.tv_life = (TextView) findViewById(R.id.tv_life);
        this.tv_add = (TextView) findViewById(R.id.tv_add);
    }

    private void setListener() {
        this.btn_ok.setOnClickListener(this);
        this.iv_close.setOnClickListener(this);
        this.tv_del.setOnClickListener(this);
        this.tv_add.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_ok) {
            OnOptionsListener onOptionsListener = this.listener;
            if (onOptionsListener != null) {
                List<PaiWeiDataBean.RolesBean> list = this.roleBeans;
                if (list != null) {
                    PaiWeiDataBean.RolesBean rolesBean = null;
                    Iterator<PaiWeiDataBean.RolesBean> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        PaiWeiDataBean.RolesBean next = it2.next();
                        if (next.isChecked()) {
                            rolesBean = next;
                            break;
                        }
                    }
                    if (rolesBean != null) {
                        this.listener.onConfirm(this.mLife, Integer.valueOf(rolesBean.getRole_id()).intValue());
                    } else {
                        ToastUtil.show(getContext(), "请选择使用角色");
                        return;
                    }
                } else {
                    onOptionsListener.onConfirm(0, 0);
                }
            }
            dismiss();
        } else if (view.getId() == R.id.iv_close) {
            OnOptionsListener onOptionsListener2 = this.listener;
            if (onOptionsListener2 != null) {
                onOptionsListener2.onClose();
            }
            dismiss();
        } else if (view.getId() == R.id.tv_add) {
            int i2 = this.mLife + 1;
            this.mLife = i2;
            int i4 = this.mMaxLife;
            if (i2 > i4) {
                this.mLife = i4;
                ToastUtil.show(getContext(), "不能再加了");
            }
            TextView textView = this.tv_life;
            textView.setText(this.mLife + "");
        } else if (view.getId() == R.id.tv_del) {
            int i5 = this.mLife - 1;
            this.mLife = i5;
            if (i5 < 1) {
                this.mLife = 1;
                ToastUtil.show(getContext(), "不能再减了");
            }
            TextView textView2 = this.tv_life;
            textView2.setText(this.mLife + "");
        }
    }

    public SimulatorUploadDialog setConfirmText(CharSequence charSequence) {
        this.btn_ok.setText(charSequence);
        return this;
    }

    public void setData(List<PaiWeiDataBean.RolesBean> list) {
        if (this.roleBeans == null) {
            this.roleBeans = new ArrayList();
        }
        this.roleBeans.clear();
        if (list != null) {
            this.roleBeans.addAll(list);
        }
        if (this.roleList == null) {
            this.roleList = new ArrayList();
        }
        for (PaiWeiDataBean.RolesBean rolesBean : this.roleBeans) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.item_simulator_role, (ViewGroup) null);
            RoleViewHolder roleViewHolder = new RoleViewHolder(inflate);
            roleViewHolder.init(rolesBean);
            this.roleList.add(roleViewHolder);
            this.ll_roles.addView(inflate, new LinearLayout.LayoutParams(-2, -2));
        }
    }

    public SimulatorUploadDialog setTipContent(CharSequence charSequence) {
        this.tv_content.setText(charSequence);
        return this;
    }

    public SimulatorUploadDialog setTipTitle(CharSequence charSequence) {
        this.tv_title.setText(charSequence);
        return this;
    }

    public SimulatorUploadDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.mLife = 1;
        this.mMaxLife = 99;
        setContentView(R.layout.dialog_simulator_upload);
        setBackgroundDimEnabled(false);
        initView();
        setListener();
    }

    public void setListener(OnOptionsListener onOptionsListener) {
        this.listener = onOptionsListener;
    }
}
