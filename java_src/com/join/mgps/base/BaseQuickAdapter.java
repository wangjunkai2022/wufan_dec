package com.join.mgps.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.join.mgps.base.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseQuickAdapter<T, K extends com.join.mgps.base.b> extends RecyclerView.Adapter<K> {
    public static final int ALPHAIN = 1;
    public static final int EMPTY_VIEW = 1365;
    public static final int FOOTER_VIEW = 819;
    public static final int HEADER_VIEW = 273;
    public static final int LOADING_VIEW = 546;
    public static final int SCALEIN = 2;
    public static final int SLIDEIN_BOTTOM = 3;
    public static final int SLIDEIN_LEFT = 4;
    public static final int SLIDEIN_RIGHT = 5;
    protected static final String TAG = "BaseQuickAdapter";
    private boolean footerViewAsFlow;
    private boolean headerViewAsFlow;
    protected Context mContext;
    private h1.b mCustomAnimation;
    protected List<T> mData;
    private int mDuration;
    private FrameLayout mEmptyLayout;
    private boolean mEnableLoadMoreEndClick;
    private boolean mFirstOnlyEnable;
    private boolean mFootAndEmptyEnable;
    private LinearLayout mFooterLayout;
    private boolean mHeadAndEmptyEnable;
    private LinearLayout mHeaderLayout;
    private Interpolator mInterpolator;
    private boolean mIsUseEmpty;
    private int mLastPosition;
    protected LayoutInflater mLayoutInflater;
    protected int mLayoutResId;
    private boolean mLoadMoreEnable;
    private com.join.mgps.base.c mLoadMoreView;
    private boolean mLoading;
    private boolean mNextLoadEnable;
    private g mOnItemChildClickListener;
    private h mOnItemChildLongClickListener;
    private i mOnItemClickListener;
    private j mOnItemLongClickListener;
    private boolean mOpenAnimationEnable;
    private int mPreLoadNumber;
    private RecyclerView mRecyclerView;
    private k mRequestLoadMoreListener;
    private h1.b mSelectAnimation;
    private l mSpanSizeLookup;
    private int mStartUpFetchPosition;
    private boolean mUpFetchEnable;
    private m mUpFetchListener;
    private boolean mUpFetching;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface AnimationType {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LinearLayoutManager f44724a;

        a(LinearLayoutManager linearLayoutManager) {
            this.f44724a = linearLayoutManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseQuickAdapter.this.isFullScreen(this.f44724a)) {
                BaseQuickAdapter.this.setEnableLoadMore(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StaggeredGridLayoutManager f44726a;

        b(StaggeredGridLayoutManager staggeredGridLayoutManager) {
            this.f44726a = staggeredGridLayoutManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f44726a.getSpanCount()];
            this.f44726a.findLastCompletelyVisibleItemPositions(iArr);
            if (BaseQuickAdapter.this.getTheBiggestNumber(iArr) + 1 != BaseQuickAdapter.this.getItemCount()) {
                BaseQuickAdapter.this.setEnableLoadMore(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseQuickAdapter.this.mLoadMoreView.e() == 3) {
                BaseQuickAdapter.this.notifyLoadMoreToLoading();
            }
            if (BaseQuickAdapter.this.mEnableLoadMoreEndClick && BaseQuickAdapter.this.mLoadMoreView.e() == 4) {
                BaseQuickAdapter.this.notifyLoadMoreToLoading();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f44729a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager.SpanSizeLookup f44730b;

        d(GridLayoutManager gridLayoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.f44729a = gridLayoutManager;
            this.f44730b = spanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i2) {
            int itemViewType = BaseQuickAdapter.this.getItemViewType(i2);
            if (itemViewType == 273 && BaseQuickAdapter.this.isHeaderViewAsFlow()) {
                return 1;
            }
            if (itemViewType == 819 && BaseQuickAdapter.this.isFooterViewAsFlow()) {
                return 1;
            }
            return BaseQuickAdapter.this.mSpanSizeLookup == null ? BaseQuickAdapter.this.isFixedViewType(itemViewType) ? this.f44729a.getSpanCount() : this.f44730b.getSpanSize(i2) : BaseQuickAdapter.this.isFixedViewType(itemViewType) ? this.f44729a.getSpanCount() : BaseQuickAdapter.this.mSpanSizeLookup.a(this.f44729a, i2 - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f44732a;

        e(com.join.mgps.base.b bVar) {
            this.f44732a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f44732a.getAdapterPosition();
            if (adapterPosition == -1) {
                return;
            }
            BaseQuickAdapter.this.setOnItemClick(view, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f44734a;

        f(com.join.mgps.base.b bVar) {
            this.f44734a = bVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f44734a.getAdapterPosition();
            if (adapterPosition == -1) {
                return false;
            }
            return BaseQuickAdapter.this.setOnItemLongClick(view, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i2);
    }

    /* loaded from: classes3.dex */
    public interface h {
        boolean a(BaseQuickAdapter baseQuickAdapter, View view, int i2);
    }

    /* loaded from: classes3.dex */
    public interface i {
        void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2);
    }

    /* loaded from: classes3.dex */
    public interface j {
        boolean a(BaseQuickAdapter baseQuickAdapter, View view, int i2);
    }

    /* loaded from: classes3.dex */
    public interface k {
        void onLoadMoreRequested();
    }

    /* loaded from: classes3.dex */
    public interface l {
        int a(GridLayoutManager gridLayoutManager, int i2);
    }

    /* loaded from: classes3.dex */
    public interface m {
        void a();
    }

    public BaseQuickAdapter(@LayoutRes int i2, @Nullable List<T> list) {
        this.mNextLoadEnable = false;
        this.mLoadMoreEnable = false;
        this.mLoading = false;
        this.mLoadMoreView = new com.join.mgps.base.d();
        this.mEnableLoadMoreEndClick = false;
        this.mFirstOnlyEnable = true;
        this.mOpenAnimationEnable = false;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 300;
        this.mLastPosition = -1;
        this.mSelectAnimation = new h1.a();
        this.mIsUseEmpty = true;
        this.mPreLoadNumber = 1;
        this.mStartUpFetchPosition = 1;
        this.mData = list == null ? new ArrayList<>() : list;
        if (i2 != 0) {
            this.mLayoutResId = i2;
        }
    }

    private void addAnimation(RecyclerView.ViewHolder viewHolder) {
        if (this.mOpenAnimationEnable) {
            if (!this.mFirstOnlyEnable || viewHolder.getLayoutPosition() > this.mLastPosition) {
                h1.b bVar = this.mCustomAnimation;
                if (bVar == null) {
                    bVar = this.mSelectAnimation;
                }
                for (Animator animator : bVar.a(viewHolder.itemView)) {
                    startAnim(animator, viewHolder.getLayoutPosition());
                }
                this.mLastPosition = viewHolder.getLayoutPosition();
            }
        }
    }

    private void autoLoadMore(int i2) {
        if (getLoadMoreViewCount() != 0 && i2 >= getItemCount() - this.mPreLoadNumber && this.mLoadMoreView.e() == 1) {
            this.mLoadMoreView.j(2);
            if (this.mLoading) {
                return;
            }
            this.mLoading = true;
            k kVar = this.mRequestLoadMoreListener;
            if (kVar != null) {
                kVar.onLoadMoreRequested();
            }
        }
    }

    private void autoUpFetch(int i2) {
        m mVar;
        if (!isUpFetchEnable() || isUpFetching() || i2 > this.mStartUpFetchPosition || (mVar = this.mUpFetchListener) == null) {
            return;
        }
        mVar.a();
    }

    private void checkNotNull() {
        if (getRecyclerView() == null) {
            throw new IllegalStateException("please bind recyclerView first!");
        }
    }

    private void compatibilityDataSizeChanged(int i2) {
        List<T> list = this.mData;
        if ((list == null ? 0 : list.size()) == i2) {
            notifyDataSetChanged();
        }
    }

    private K createGenericKInstance(Class cls, View view) {
        try {
            if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                Constructor<T> declaredConstructor = cls.getDeclaredConstructor(getClass(), View.class);
                declaredConstructor.setAccessible(true);
                return (K) declaredConstructor.newInstance(this, view);
            }
            Constructor<T> declaredConstructor2 = cls.getDeclaredConstructor(View.class);
            declaredConstructor2.setAccessible(true);
            return (K) declaredConstructor2.newInstance(view);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return null;
        } catch (InstantiationException e5) {
            e5.printStackTrace();
            return null;
        } catch (NoSuchMethodException e6) {
            e6.printStackTrace();
            return null;
        } catch (InvocationTargetException e7) {
            e7.printStackTrace();
            return null;
        }
    }

    private j1.a getExpandableItem(int i2) {
        T item = getItem(i2);
        if (isExpandable(item)) {
            return (j1.a) item;
        }
        return null;
    }

    private int getFooterViewPosition() {
        int i2 = 1;
        if (getEmptyViewCount() == 1) {
            if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
                i2 = 2;
            }
            if (this.mFootAndEmptyEnable) {
                return i2;
            }
            return -1;
        }
        return getHeaderLayoutCount() + this.mData.size();
    }

    private int getHeaderViewPosition() {
        return (getEmptyViewCount() != 1 || this.mHeadAndEmptyEnable) ? 0 : -1;
    }

    private Class getInstancedGenericKClass(Class cls) {
        Type[] actualTypeArguments;
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                for (Type type : ((ParameterizedType) genericSuperclass).getActualTypeArguments()) {
                    if (type instanceof Class) {
                        Class cls2 = (Class) type;
                        if (com.join.mgps.base.b.class.isAssignableFrom(cls2)) {
                            return cls2;
                        }
                    } else if (type instanceof ParameterizedType) {
                        Type rawType = ((ParameterizedType) type).getRawType();
                        if ((rawType instanceof Class) && com.join.mgps.base.b.class.isAssignableFrom((Class) rawType)) {
                            return (Class) rawType;
                        }
                    } else {
                        continue;
                    }
                }
                return null;
            }
            return null;
        } catch (TypeNotPresentException e4) {
            e4.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e5) {
            e5.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    private int getItemPosition(T t3) {
        List<T> list;
        if (t3 == null || (list = this.mData) == null || list.isEmpty()) {
            return -1;
        }
        return this.mData.indexOf(t3);
    }

    private K getLoadingView(ViewGroup viewGroup) {
        K createBaseViewHolder = createBaseViewHolder(getItemView(this.mLoadMoreView.b(), viewGroup));
        createBaseViewHolder.itemView.setOnClickListener(new c());
        return createBaseViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTheBiggestNumber(int[] iArr) {
        int i2 = -1;
        if (iArr != null && iArr.length != 0) {
            for (int i4 : iArr) {
                if (i4 > i2) {
                    i2 = i4;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFullScreen(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    private void openLoadMore(k kVar) {
        this.mRequestLoadMoreListener = kVar;
        this.mNextLoadEnable = true;
        this.mLoadMoreEnable = true;
        this.mLoading = false;
    }

    private int recursiveCollapse(@IntRange(from = 0) int i2) {
        T item = getItem(i2);
        if (item == null || !isExpandable(item)) {
            return 0;
        }
        j1.a aVar = (j1.a) item;
        if (aVar.b()) {
            ArrayList arrayList = new ArrayList();
            int h4 = aVar.h();
            int size = this.mData.size();
            for (int i4 = i2 + 1; i4 < size; i4++) {
                T t3 = this.mData.get(i4);
                if ((t3 instanceof j1.a) && ((j1.a) t3).h() <= h4) {
                    break;
                }
                arrayList.add(t3);
            }
            this.mData.removeAll(arrayList);
            return arrayList.size();
        }
        return 0;
    }

    private int recursiveExpand(int i2, @NonNull List list) {
        int size = list.size();
        int size2 = (i2 + list.size()) - 1;
        int size3 = list.size() - 1;
        while (size3 >= 0) {
            if (list.get(size3) instanceof j1.a) {
                j1.a aVar = (j1.a) list.get(size3);
                if (aVar.b() && hasSubItems(aVar)) {
                    List<T> c4 = aVar.c();
                    int i4 = size2 + 1;
                    this.mData.addAll(i4, c4);
                    size += recursiveExpand(i4, c4);
                }
            }
            size3--;
            size2--;
        }
        return size;
    }

    private void setRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Deprecated
    public void add(@IntRange(from = 0) int i2, @NonNull T t3) {
        addData(i2, (int) t3);
    }

    public void addData(@IntRange(from = 0) int i2, @NonNull T t3) {
        this.mData.add(i2, t3);
        notifyItemInserted(i2 + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public int addFooterView(View view) {
        return addFooterView(view, -1, 1);
    }

    public int addHeaderView(View view) {
        return addHeaderView(view, -1);
    }

    public void bindToRecyclerView(RecyclerView recyclerView) {
        if (getRecyclerView() != recyclerView) {
            setRecyclerView(recyclerView);
            getRecyclerView().setAdapter(this);
            return;
        }
        throw new IllegalStateException("Don't bind twice");
    }

    protected void bindViewClickListener(K k4) {
        if (k4 == null) {
            return;
        }
        View view = k4.itemView;
        if (getOnItemClickListener() != null) {
            view.setOnClickListener(new e(k4));
        }
        if (getOnItemLongClickListener() != null) {
            view.setOnLongClickListener(new f(k4));
        }
    }

    public void closeLoadAnimation() {
        this.mOpenAnimationEnable = false;
    }

    public int collapse(@IntRange(from = 0) int i2, boolean z3, boolean z4) {
        int headerLayoutCount = i2 - getHeaderLayoutCount();
        j1.a expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem == null) {
            return 0;
        }
        int recursiveCollapse = recursiveCollapse(headerLayoutCount);
        expandableItem.a(false);
        if (z4) {
            if (z3) {
                notifyItemChanged(i2);
                notifyItemRangeRemoved(i2 + 1, recursiveCollapse);
            } else {
                notifyDataSetChanged();
            }
        }
        return recursiveCollapse;
    }

    protected abstract void convert(@NonNull K k4, T t3);

    protected void convertPayloads(@NonNull K k4, T t3, @NonNull List<Object> list) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public K createBaseViewHolder(ViewGroup viewGroup, int i2) {
        return createBaseViewHolder(getItemView(i2, viewGroup));
    }

    public void disableLoadMoreIfNotFullPage() {
        checkNotNull();
        disableLoadMoreIfNotFullPage(getRecyclerView());
    }

    public void enableLoadMoreEndClick(boolean z3) {
        this.mEnableLoadMoreEndClick = z3;
    }

    public int expand(@IntRange(from = 0) int i2, boolean z3, boolean z4) {
        int headerLayoutCount = i2 - getHeaderLayoutCount();
        j1.a expandableItem = getExpandableItem(headerLayoutCount);
        int i4 = 0;
        if (expandableItem == null) {
            return 0;
        }
        if (!hasSubItems(expandableItem)) {
            expandableItem.a(true);
            notifyItemChanged(i2);
            return 0;
        }
        if (!expandableItem.b()) {
            List<T> c4 = expandableItem.c();
            int i5 = headerLayoutCount + 1;
            this.mData.addAll(i5, c4);
            i4 = 0 + recursiveExpand(i5, c4);
            expandableItem.a(true);
        }
        if (z4) {
            if (z3) {
                notifyItemChanged(i2);
                notifyItemRangeInserted(i2 + 1, i4);
            } else {
                notifyDataSetChanged();
            }
        }
        return i4;
    }

    public int expandAll(int i2, boolean z3, boolean z4) {
        T item;
        int headerLayoutCount = i2 - getHeaderLayoutCount();
        j1.a expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem == null) {
            return 0;
        }
        if (!hasSubItems(expandableItem)) {
            expandableItem.a(true);
            notifyItemChanged(i2);
            return 0;
        }
        int i4 = headerLayoutCount + 1;
        T item2 = i4 < this.mData.size() ? getItem(i4) : null;
        int expand = expand(i2, false, false);
        while (i4 < this.mData.size() && ((item = getItem(i4)) == null || !item.equals(item2))) {
            if (isExpandable(item)) {
                expand += expand(getHeaderLayoutCount() + i4, false, false);
            }
            i4++;
        }
        if (z4) {
            if (z3) {
                notifyItemChanged(i2);
                notifyItemRangeInserted(i2 + 1, expand);
            } else {
                notifyDataSetChanged();
            }
        }
        return expand;
    }

    @NonNull
    public List<T> getData() {
        return this.mData;
    }

    protected int getDefItemViewType(int i2) {
        return super.getItemViewType(i2);
    }

    public View getEmptyView() {
        return this.mEmptyLayout;
    }

    public int getEmptyViewCount() {
        FrameLayout frameLayout = this.mEmptyLayout;
        return (frameLayout == null || frameLayout.getChildCount() == 0 || !this.mIsUseEmpty || this.mData.size() != 0) ? 0 : 1;
    }

    public LinearLayout getFooterLayout() {
        return this.mFooterLayout;
    }

    public int getFooterLayoutCount() {
        LinearLayout linearLayout = this.mFooterLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getFooterViewsCount() {
        return getFooterLayoutCount();
    }

    public LinearLayout getHeaderLayout() {
        return this.mHeaderLayout;
    }

    public int getHeaderLayoutCount() {
        LinearLayout linearLayout = this.mHeaderLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getHeaderViewsCount() {
        return getHeaderLayoutCount();
    }

    @Nullable
    public T getItem(@IntRange(from = 0) int i2) {
        if (i2 < 0 || i2 >= this.mData.size()) {
            return null;
        }
        return this.mData.get(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i2 = 1;
        if (1 != getEmptyViewCount()) {
            return getLoadMoreViewCount() + getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i2 = 2;
        }
        return (!this.mFootAndEmptyEnable || getFooterLayoutCount() == 0) ? i2 : i2 + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    protected View getItemView(@LayoutRes int i2, ViewGroup viewGroup) {
        return this.mLayoutInflater.inflate(i2, viewGroup, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        if (getEmptyViewCount() == 1) {
            boolean z3 = this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0;
            if (i2 != 0) {
                return i2 != 1 ? i2 != 2 ? EMPTY_VIEW : FOOTER_VIEW : z3 ? EMPTY_VIEW : FOOTER_VIEW;
            } else if (z3) {
                return 273;
            } else {
                return EMPTY_VIEW;
            }
        }
        int headerLayoutCount = getHeaderLayoutCount();
        if (i2 < headerLayoutCount) {
            return 273;
        }
        int i4 = i2 - headerLayoutCount;
        int size = this.mData.size();
        if (i4 < size) {
            return getDefItemViewType(i4);
        }
        return i4 - size < getFooterLayoutCount() ? FOOTER_VIEW : LOADING_VIEW;
    }

    public int getLoadMoreViewCount() {
        if (this.mRequestLoadMoreListener == null || !this.mLoadMoreEnable) {
            return 0;
        }
        return ((this.mNextLoadEnable || !this.mLoadMoreView.h()) && this.mData.size() != 0) ? 1 : 0;
    }

    public int getLoadMoreViewPosition() {
        return getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount();
    }

    @Nullable
    public final g getOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    @Nullable
    public final h getOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }

    public final i getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final j getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public int getParentPosition(@NonNull T t3) {
        int itemPosition = getItemPosition(t3);
        if (itemPosition == -1) {
            return -1;
        }
        int h4 = t3 instanceof j1.a ? ((j1.a) t3).h() : Integer.MAX_VALUE;
        if (h4 == 0) {
            return itemPosition;
        }
        if (h4 == -1) {
            return -1;
        }
        while (itemPosition >= 0) {
            T t4 = this.mData.get(itemPosition);
            if (t4 instanceof j1.a) {
                j1.a aVar = (j1.a) t4;
                if (aVar.h() >= 0 && aVar.h() < h4) {
                    return itemPosition;
                }
            }
            itemPosition--;
        }
        return -1;
    }

    protected RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Nullable
    public View getViewByPosition(int i2, @IdRes int i4) {
        checkNotNull();
        return getViewByPosition(getRecyclerView(), i2, i4);
    }

    public boolean hasSubItems(j1.a aVar) {
        List<T> c4;
        return (aVar == null || (c4 = aVar.c()) == null || c4.size() <= 0) ? false : true;
    }

    public boolean isExpandable(T t3) {
        return t3 instanceof j1.a;
    }

    public void isFirstOnly(boolean z3) {
        this.mFirstOnlyEnable = z3;
    }

    protected boolean isFixedViewType(int i2) {
        return i2 == 1365 || i2 == 273 || i2 == 819 || i2 == 546;
    }

    public boolean isFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public boolean isHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public boolean isLoadMoreEnable() {
        return this.mLoadMoreEnable;
    }

    public boolean isLoading() {
        return this.mLoading;
    }

    public boolean isUpFetchEnable() {
        return this.mUpFetchEnable;
    }

    public boolean isUpFetching() {
        return this.mUpFetching;
    }

    public void isUseEmpty(boolean z3) {
        this.mIsUseEmpty = z3;
    }

    public void loadMoreComplete() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = true;
        this.mLoadMoreView.j(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void loadMoreEnd() {
        loadMoreEnd(false);
    }

    public void loadMoreFail() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mLoadMoreView.j(3);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void notifyLoadMoreToLoading() {
        if (this.mLoadMoreView.e() == 2) {
            return;
        }
        this.mLoadMoreView.j(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new d(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        onBindViewHolder((BaseQuickAdapter<T, K>) ((com.join.mgps.base.b) viewHolder), i2);
    }

    protected K onCreateDefViewHolder(ViewGroup viewGroup, int i2) {
        return createBaseViewHolder(viewGroup, this.mLayoutResId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        onViewAttachedToWindow((BaseQuickAdapter<T, K>) ((com.join.mgps.base.b) viewHolder));
    }

    public void openLoadAnimation(int i2) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = null;
        if (i2 == 1) {
            this.mSelectAnimation = new h1.a();
        } else if (i2 == 2) {
            this.mSelectAnimation = new h1.c();
        } else if (i2 == 3) {
            this.mSelectAnimation = new h1.d();
        } else if (i2 == 4) {
            this.mSelectAnimation = new h1.e();
        } else if (i2 != 5) {
        } else {
            this.mSelectAnimation = new h1.f();
        }
    }

    public final void refreshNotifyItemChanged(int i2) {
        notifyItemChanged(i2 + getHeaderLayoutCount());
    }

    public void remove(@IntRange(from = 0) int i2) {
        this.mData.remove(i2);
        int headerLayoutCount = i2 + getHeaderLayoutCount();
        notifyItemRemoved(headerLayoutCount);
        compatibilityDataSizeChanged(0);
        notifyItemRangeChanged(headerLayoutCount, this.mData.size() - headerLayoutCount);
    }

    public void removeAllFooterView() {
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeAllViews();
        int footerViewPosition = getFooterViewPosition();
        if (footerViewPosition != -1) {
            notifyItemRemoved(footerViewPosition);
        }
    }

    public void removeAllHeaderView() {
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeAllViews();
        int headerViewPosition = getHeaderViewPosition();
        if (headerViewPosition != -1) {
            notifyItemRemoved(headerViewPosition);
        }
    }

    public void removeFooterView(View view) {
        int footerViewPosition;
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeView(view);
        if (this.mFooterLayout.getChildCount() != 0 || (footerViewPosition = getFooterViewPosition()) == -1) {
            return;
        }
        notifyItemRemoved(footerViewPosition);
    }

    public void removeHeaderView(View view) {
        int headerViewPosition;
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeView(view);
        if (this.mHeaderLayout.getChildCount() != 0 || (headerViewPosition = getHeaderViewPosition()) == -1) {
            return;
        }
        notifyItemRemoved(headerViewPosition);
    }

    public void replaceData(@NonNull Collection<? extends T> collection) {
        List<T> list = this.mData;
        if (collection != list) {
            list.clear();
            this.mData.addAll(collection);
        }
        notifyDataSetChanged();
    }

    @Deprecated
    public void setAutoLoadMoreSize(int i2) {
        setPreLoadNumber(i2);
    }

    public void setData(@IntRange(from = 0) int i2, @NonNull T t3) {
        this.mData.set(i2, t3);
        notifyItemChanged(i2 + getHeaderLayoutCount());
    }

    public void setDuration(int i2) {
        this.mDuration = i2;
    }

    public void setEmptyView(int i2, ViewGroup viewGroup) {
        setEmptyView(LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false));
    }

    public void setEnableLoadMore(boolean z3) {
        int loadMoreViewCount = getLoadMoreViewCount();
        this.mLoadMoreEnable = z3;
        int loadMoreViewCount2 = getLoadMoreViewCount();
        if (loadMoreViewCount == 1) {
            if (loadMoreViewCount2 == 0) {
                notifyItemRemoved(getLoadMoreViewPosition());
            }
        } else if (loadMoreViewCount2 == 1) {
            this.mLoadMoreView.j(1);
            notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public int setFooterView(View view) {
        return setFooterView(view, 0, 1);
    }

    public void setFooterViewAsFlow(boolean z3) {
        this.footerViewAsFlow = z3;
    }

    protected void setFullSpan(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder.itemView.getLayoutParams() instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) viewHolder.itemView.getLayoutParams()).setFullSpan(true);
        }
    }

    public void setHeaderAndEmpty(boolean z3) {
        setHeaderFooterEmpty(z3, false);
    }

    public void setHeaderFooterEmpty(boolean z3, boolean z4) {
        this.mHeadAndEmptyEnable = z3;
        this.mFootAndEmptyEnable = z4;
    }

    public int setHeaderView(View view) {
        return setHeaderView(view, 0, 1);
    }

    public void setHeaderViewAsFlow(boolean z3) {
        this.headerViewAsFlow = z3;
    }

    public void setLoadMoreView(com.join.mgps.base.c cVar) {
        this.mLoadMoreView = cVar;
    }

    public void setNewData(@Nullable List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        if (this.mRequestLoadMoreListener != null) {
            this.mNextLoadEnable = true;
            this.mLoadMoreEnable = true;
            this.mLoading = false;
            this.mLoadMoreView.j(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void setNewDiffData(@NonNull com.join.mgps.base.diff.b<T> bVar) {
        setNewDiffData((com.join.mgps.base.diff.b) bVar, false);
    }

    public void setNotDoAnimationCount(int i2) {
        this.mLastPosition = i2;
    }

    public void setOnItemChildClickListener(g gVar) {
        this.mOnItemChildClickListener = gVar;
    }

    public void setOnItemChildLongClickListener(h hVar) {
        this.mOnItemChildLongClickListener = hVar;
    }

    public void setOnItemClick(View view, int i2) {
        getOnItemClickListener().onItemClick(this, view, i2);
    }

    public void setOnItemClickListener(@Nullable i iVar) {
        this.mOnItemClickListener = iVar;
    }

    public boolean setOnItemLongClick(View view, int i2) {
        return getOnItemLongClickListener().a(this, view, i2);
    }

    public void setOnItemLongClickListener(j jVar) {
        this.mOnItemLongClickListener = jVar;
    }

    public void setOnLoadMoreListener(k kVar, RecyclerView recyclerView) {
        openLoadMore(kVar);
        if (getRecyclerView() == null) {
            setRecyclerView(recyclerView);
        }
    }

    public void setPreLoadNumber(int i2) {
        if (i2 > 1) {
            this.mPreLoadNumber = i2;
        }
    }

    public void setSpanSizeLookup(l lVar) {
        this.mSpanSizeLookup = lVar;
    }

    public void setStartUpFetchPosition(int i2) {
        this.mStartUpFetchPosition = i2;
    }

    public void setUpFetchEnable(boolean z3) {
        this.mUpFetchEnable = z3;
    }

    public void setUpFetchListener(m mVar) {
        this.mUpFetchListener = mVar;
    }

    public void setUpFetching(boolean z3) {
        this.mUpFetching = z3;
    }

    protected void startAnim(Animator animator, int i2) {
        animator.setDuration(this.mDuration).start();
        animator.setInterpolator(this.mInterpolator);
    }

    public int addFooterView(View view, int i2) {
        return addFooterView(view, i2, 1);
    }

    public int addHeaderView(View view, int i2) {
        return addHeaderView(view, i2, 1);
    }

    protected K createBaseViewHolder(View view) {
        K createGenericKInstance;
        Class cls = null;
        for (Class<?> cls2 = getClass(); cls == null && cls2 != null; cls2 = cls2.getSuperclass()) {
            cls = getInstancedGenericKClass(cls2);
        }
        if (cls == null) {
            createGenericKInstance = (K) new com.join.mgps.base.b(view);
        } else {
            createGenericKInstance = createGenericKInstance(cls, view);
        }
        return createGenericKInstance != null ? createGenericKInstance : (K) new com.join.mgps.base.b(view);
    }

    public void loadMoreEnd(boolean z3) {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = false;
        this.mLoadMoreView.i(z3);
        if (z3) {
            notifyItemRemoved(getLoadMoreViewPosition());
            return;
        }
        this.mLoadMoreView.j(4);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2, @NonNull List list) {
        onBindViewHolder((BaseQuickAdapter<T, K>) ((com.join.mgps.base.b) viewHolder), i2, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public K onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        K createBaseViewHolder;
        Context context = viewGroup.getContext();
        this.mContext = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        if (i2 == 273) {
            ViewParent parent = this.mHeaderLayout.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mHeaderLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mHeaderLayout);
        } else if (i2 == 546) {
            createBaseViewHolder = getLoadingView(viewGroup);
        } else if (i2 == 819) {
            ViewParent parent2 = this.mFooterLayout.getParent();
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(this.mFooterLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mFooterLayout);
        } else if (i2 != 1365) {
            createBaseViewHolder = onCreateDefViewHolder(viewGroup, i2);
            bindViewClickListener(createBaseViewHolder);
        } else {
            ViewParent parent3 = this.mEmptyLayout.getParent();
            if (parent3 instanceof ViewGroup) {
                ((ViewGroup) parent3).removeView(this.mEmptyLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mEmptyLayout);
        }
        createBaseViewHolder.n(this);
        return createBaseViewHolder;
    }

    public void onViewAttachedToWindow(@NonNull K k4) {
        super.onViewAttachedToWindow((BaseQuickAdapter<T, K>) k4);
        int itemViewType = k4.getItemViewType();
        if (itemViewType != 1365 && itemViewType != 273 && itemViewType != 819 && itemViewType != 546) {
            addAnimation(k4);
        } else {
            setFullSpan(k4);
        }
    }

    public final void refreshNotifyItemChanged(int i2, @Nullable Object obj) {
        notifyItemChanged(i2 + getHeaderLayoutCount(), obj);
    }

    public int setFooterView(View view, int i2) {
        return setFooterView(view, i2, 1);
    }

    public int setHeaderView(View view, int i2) {
        return setHeaderView(view, i2, 1);
    }

    public void setNewDiffData(@NonNull com.join.mgps.base.diff.b<T> bVar, boolean z3) {
        if (getEmptyViewCount() == 1) {
            setNewData(bVar.d());
            return;
        }
        bVar.f(getData());
        DiffUtil.calculateDiff(bVar, z3).dispatchUpdatesTo(new com.join.mgps.base.diff.a(this));
        this.mData = bVar.d();
    }

    public int addFooterView(View view, int i2, int i4) {
        int footerViewPosition;
        if (this.mFooterLayout == null) {
            LinearLayout linearLayout = new LinearLayout(view.getContext());
            this.mFooterLayout = linearLayout;
            if (i4 == 1) {
                linearLayout.setOrientation(1);
                this.mFooterLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mFooterLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mFooterLayout.getChildCount();
        if (i2 < 0 || i2 > childCount) {
            i2 = childCount;
        }
        this.mFooterLayout.addView(view, i2);
        if (this.mFooterLayout.getChildCount() == 1 && (footerViewPosition = getFooterViewPosition()) != -1) {
            notifyItemInserted(footerViewPosition);
        }
        return i2;
    }

    public int addHeaderView(View view, int i2, int i4) {
        int headerViewPosition;
        if (this.mHeaderLayout == null) {
            LinearLayout linearLayout = new LinearLayout(view.getContext());
            this.mHeaderLayout = linearLayout;
            if (i4 == 1) {
                linearLayout.setOrientation(1);
                this.mHeaderLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mHeaderLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mHeaderLayout.getChildCount();
        if (i2 < 0 || i2 > childCount) {
            i2 = childCount;
        }
        this.mHeaderLayout.addView(view, i2);
        if (this.mHeaderLayout.getChildCount() == 1 && (headerViewPosition = getHeaderViewPosition()) != -1) {
            notifyItemInserted(headerViewPosition);
        }
        return i2;
    }

    public void disableLoadMoreIfNotFullPage(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        setEnableLoadMore(false);
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerView.postDelayed(new a((LinearLayoutManager) layoutManager), 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerView.postDelayed(new b((StaggeredGridLayoutManager) layoutManager), 50L);
        }
    }

    @Nullable
    public View getViewByPosition(RecyclerView recyclerView, int i2, @IdRes int i4) {
        com.join.mgps.base.b bVar;
        if (recyclerView == null || (bVar = (com.join.mgps.base.b) recyclerView.findViewHolderForLayoutPosition(i2)) == null) {
            return null;
        }
        return bVar.k(i4);
    }

    public void onBindViewHolder(@NonNull K k4, int i2) {
        autoUpFetch(i2);
        autoLoadMore(i2);
        int itemViewType = k4.getItemViewType();
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.a(k4);
            } else if (itemViewType == 819 || itemViewType == 1365) {
            } else {
                convert(k4, getItem(i2 - getHeaderLayoutCount()));
            }
        }
    }

    @Deprecated
    public void setEmptyView(int i2) {
        checkNotNull();
        setEmptyView(i2, getRecyclerView());
    }

    public int setFooterView(View view, int i2, int i4) {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null && linearLayout.getChildCount() > i2) {
            this.mFooterLayout.removeViewAt(i2);
            this.mFooterLayout.addView(view, i2);
            return i2;
        }
        return addFooterView(view, i2, i4);
    }

    public int setHeaderView(View view, int i2, int i4) {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null && linearLayout.getChildCount() > i2) {
            this.mHeaderLayout.removeViewAt(i2);
            this.mHeaderLayout.addView(view, i2);
            return i2;
        }
        return addHeaderView(view, i2, i4);
    }

    public void addData(@NonNull T t3) {
        this.mData.add(t3);
        notifyItemInserted(this.mData.size() + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public void setEmptyView(View view) {
        boolean z3;
        int itemCount = getItemCount();
        int i2 = 0;
        if (this.mEmptyLayout == null) {
            this.mEmptyLayout = new FrameLayout(view.getContext());
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams.width = layoutParams2.width;
                layoutParams.height = layoutParams2.height;
            }
            this.mEmptyLayout.setLayoutParams(layoutParams);
            z3 = true;
        } else {
            z3 = false;
        }
        this.mEmptyLayout.removeAllViews();
        this.mEmptyLayout.addView(view);
        this.mIsUseEmpty = true;
        if (z3 && getEmptyViewCount() == 1) {
            if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
                i2 = 1;
            }
            if (getItemCount() > itemCount) {
                notifyItemInserted(i2);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public void addData(@IntRange(from = 0) int i2, @NonNull Collection<? extends T> collection) {
        this.mData.addAll(i2, collection);
        notifyItemRangeInserted(i2 + getHeaderLayoutCount(), collection.size());
        compatibilityDataSizeChanged(collection.size());
    }

    public int collapse(@IntRange(from = 0) int i2) {
        return collapse(i2, true, true);
    }

    public void onBindViewHolder(@NonNull K k4, int i2, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            onBindViewHolder((BaseQuickAdapter<T, K>) k4, i2);
            return;
        }
        autoUpFetch(i2);
        autoLoadMore(i2);
        int itemViewType = k4.getItemViewType();
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.a(k4);
            } else if (itemViewType == 819 || itemViewType == 1365) {
            } else {
                convertPayloads(k4, getItem(i2 - getHeaderLayoutCount()), list);
            }
        }
    }

    public void openLoadAnimation(h1.b bVar) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = bVar;
    }

    public void setNewDiffData(@NonNull DiffUtil.DiffResult diffResult, @NonNull List<T> list) {
        if (getEmptyViewCount() == 1) {
            setNewData(list);
            return;
        }
        diffResult.dispatchUpdatesTo(new com.join.mgps.base.diff.a(this));
        this.mData = list;
    }

    public int collapse(@IntRange(from = 0) int i2, boolean z3) {
        return collapse(i2, z3, true);
    }

    public void addData(@NonNull Collection<? extends T> collection) {
        this.mData.addAll(collection);
        notifyItemRangeInserted((this.mData.size() - collection.size()) + getHeaderLayoutCount(), collection.size());
        compatibilityDataSizeChanged(collection.size());
    }

    public void openLoadAnimation() {
        this.mOpenAnimationEnable = true;
    }

    public int expand(@IntRange(from = 0) int i2, boolean z3) {
        return expand(i2, z3, true);
    }

    public int expand(@IntRange(from = 0) int i2) {
        return expand(i2, true, true);
    }

    public int expandAll(int i2, boolean z3) {
        return expandAll(i2, true, !z3);
    }

    public BaseQuickAdapter(@Nullable List<T> list) {
        this(0, list);
    }

    public void expandAll() {
        for (int size = (this.mData.size() - 1) + getHeaderLayoutCount(); size >= getHeaderLayoutCount(); size--) {
            expandAll(size, false, false);
        }
    }

    public BaseQuickAdapter(@LayoutRes int i2) {
        this(i2, null);
    }
}
