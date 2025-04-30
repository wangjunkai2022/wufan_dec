package androidx.databinding;

import android.view.View;
import androidx.annotation.RestrictTo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class MergedDataBinderMapper extends DataBinderMapper {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5234d = "MergedDataBinderMapper";

    /* renamed from: a  reason: collision with root package name */
    private Set<Class<? extends DataBinderMapper>> f5235a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private List<DataBinderMapper> f5236b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<String> f5237c = new CopyOnWriteArrayList();

    private boolean b() {
        boolean z3 = false;
        for (String str : this.f5237c) {
            try {
                Class<?> cls = Class.forName(str);
                if (DataBinderMapper.class.isAssignableFrom(cls)) {
                    addMapper((DataBinderMapper) cls.newInstance());
                    this.f5237c.remove(str);
                    z3 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException unused2) {
                StringBuilder sb = new StringBuilder();
                sb.append("unable to add feature mapper for ");
                sb.append(str);
            } catch (InstantiationException unused3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unable to add feature mapper for ");
                sb2.append(str);
            }
        }
        return z3;
    }

    protected void a(String str) {
        List<String> list = this.f5237c;
        list.add(str + ".DataBinderMapperImpl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addMapper(DataBinderMapper dataBinderMapper) {
        if (this.f5235a.add(dataBinderMapper.getClass())) {
            this.f5236b.add(dataBinderMapper);
            for (DataBinderMapper dataBinderMapper2 : dataBinderMapper.collectDependencies()) {
                addMapper(dataBinderMapper2);
            }
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i2) {
        for (DataBinderMapper dataBinderMapper : this.f5236b) {
            String convertBrIdToString = dataBinderMapper.convertBrIdToString(i2);
            if (convertBrIdToString != null) {
                return convertBrIdToString;
            }
        }
        if (b()) {
            return convertBrIdToString(i2);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i2) {
        for (DataBinderMapper dataBinderMapper : this.f5236b) {
            ViewDataBinding dataBinder = dataBinderMapper.getDataBinder(dataBindingComponent, view, i2);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (b()) {
            return getDataBinder(dataBindingComponent, view, i2);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        for (DataBinderMapper dataBinderMapper : this.f5236b) {
            int layoutId = dataBinderMapper.getLayoutId(str);
            if (layoutId != 0) {
                return layoutId;
            }
        }
        if (b()) {
            return getLayoutId(str);
        }
        return 0;
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i2) {
        for (DataBinderMapper dataBinderMapper : this.f5236b) {
            ViewDataBinding dataBinder = dataBinderMapper.getDataBinder(dataBindingComponent, viewArr, i2);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (b()) {
            return getDataBinder(dataBindingComponent, viewArr, i2);
        }
        return null;
    }
}
