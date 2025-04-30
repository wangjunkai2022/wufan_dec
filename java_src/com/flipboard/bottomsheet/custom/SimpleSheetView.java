package com.flipboard.bottomsheet.custom;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.core.view.ViewCompat;
import com.flipboard.bottomsheet.custom.a;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class SimpleSheetView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected final ListView f13726a;

    /* renamed from: b  reason: collision with root package name */
    protected final TextView f13727b;

    /* renamed from: c  reason: collision with root package name */
    protected final View f13728c;

    /* renamed from: d  reason: collision with root package name */
    protected final d f13729d;

    /* renamed from: e  reason: collision with root package name */
    protected final List<c> f13730e;

    /* renamed from: f  reason: collision with root package name */
    protected b f13731f;

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f13732a;

        a(d dVar) {
            this.f13732a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f13732a.onClose();
        }
    }

    /* loaded from: classes2.dex */
    private class b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final Context f13734a;

        /* renamed from: b  reason: collision with root package name */
        private final List<c> f13735b;

        /* renamed from: c  reason: collision with root package name */
        private LayoutInflater f13736c;

        /* loaded from: classes2.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f13738a;

            a(c cVar) {
                this.f13738a = cVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d dVar = SimpleSheetView.this.f13729d;
                if (dVar != null) {
                    dVar.a(this.f13738a);
                }
            }
        }

        /* renamed from: com.flipboard.bottomsheet.custom.SimpleSheetView$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0095b {

            /* renamed from: a  reason: collision with root package name */
            final ImageView f13740a;

            /* renamed from: b  reason: collision with root package name */
            final TextView f13741b;

            /* renamed from: c  reason: collision with root package name */
            final TextView f13742c;

            /* renamed from: d  reason: collision with root package name */
            final View f13743d;

            C0095b(View view) {
                this.f13740a = (ImageView) view.findViewById(R.id.icon);
                this.f13741b = (TextView) view.findViewById(R.id.title);
                this.f13742c = (TextView) view.findViewById(R.id.desc);
                this.f13743d = view.findViewById(R.id.download);
            }
        }

        public b(Context context, List<c> list) {
            this.f13734a = context;
            this.f13735b = list;
            this.f13736c = LayoutInflater.from(context);
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public c getItem(int i2) {
            return this.f13735b.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f13735b.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return this.f13735b.get(i2).f13745a.hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            C0095b c0095b;
            if (view == null) {
                view = this.f13736c.inflate(R.layout.simple_sheet_item, viewGroup, false);
                c0095b = new C0095b(view);
                view.setTag(c0095b);
            } else {
                c0095b = (C0095b) view.getTag();
            }
            c cVar = this.f13735b.get(i2);
            c0095b.f13741b.setText(cVar.f13746b);
            c0095b.f13742c.setText(cVar.f13747c);
            c0095b.f13743d.setOnClickListener(new a(cVar));
            return view;
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public String f13745a;

        /* renamed from: b  reason: collision with root package name */
        public String f13746b;

        /* renamed from: c  reason: collision with root package name */
        public String f13747c;

        /* renamed from: d  reason: collision with root package name */
        public String f13748d;

        /* renamed from: e  reason: collision with root package name */
        public String f13749e;

        public c(String str, String str2, String str3) {
            this.f13745a = str;
            this.f13746b = str2;
            this.f13747c = str3;
        }

        public String a() {
            return this.f13749e;
        }

        public String b() {
            return this.f13748d;
        }

        public void c(String str) {
            this.f13749e = str;
        }

        public void d(String str) {
            this.f13748d = str;
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(c cVar);

        void b(c cVar);

        void onClose();
    }

    public SimpleSheetView(Context context, @StringRes int i2, d dVar) {
        this(context, context.getString(i2), dVar);
    }

    public List<c> getMixins() {
        return this.f13730e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = new b(getContext(), this.f13730e);
        this.f13731f = bVar;
        this.f13726a.setAdapter((ListAdapter) bVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        View.MeasureSpec.getSize(i2);
        super.onMeasure(i2, i4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new a.C0096a(i2, i4));
        }
    }

    public void setMixins(@NonNull List<c> list) {
        this.f13730e.clear();
        this.f13730e.addAll(list);
    }

    public void setTitle(String str) {
        TextView textView = this.f13727b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public SimpleSheetView(Context context, String str, d dVar) {
        super(context);
        this.f13730e = new ArrayList();
        FrameLayout.inflate(context, R.layout.simple_sheet_view, this);
        this.f13726a = (ListView) findViewById(R.id.list);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f13727b = textView;
        View findViewById = findViewById(R.id.close);
        this.f13728c = findViewById;
        textView.setText(str);
        this.f13729d = dVar;
        findViewById.setOnClickListener(new a(dVar));
        ViewCompat.setElevation(this, com.flipboard.bottomsheet.custom.a.a(getContext(), 16.0f));
    }
}
