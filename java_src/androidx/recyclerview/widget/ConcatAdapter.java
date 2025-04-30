package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class ConcatAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    static final String f6785b = "ConcatAdapter";

    /* renamed from: a  reason: collision with root package name */
    private final ConcatAdapterController f6786a;

    /* loaded from: classes2.dex */
    public static final class Config {
        @NonNull
        public static final Config DEFAULT = new Config(true, StableIdMode.NO_STABLE_IDS);
        public final boolean isolateViewTypes;
        @NonNull
        public final StableIdMode stableIdMode;

        /* loaded from: classes2.dex */
        public static final class Builder {

            /* renamed from: a  reason: collision with root package name */
            private boolean f6787a;

            /* renamed from: b  reason: collision with root package name */
            private StableIdMode f6788b;

            public Builder() {
                Config config = Config.DEFAULT;
                this.f6787a = config.isolateViewTypes;
                this.f6788b = config.stableIdMode;
            }

            @NonNull
            public Config build() {
                return new Config(this.f6787a, this.f6788b);
            }

            @NonNull
            public Builder setIsolateViewTypes(boolean z3) {
                this.f6787a = z3;
                return this;
            }

            @NonNull
            public Builder setStableIdMode(@NonNull StableIdMode stableIdMode) {
                this.f6788b = stableIdMode;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        public enum StableIdMode {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        Config(boolean z3, @NonNull StableIdMode stableIdMode) {
            this.isolateViewTypes = z3;
            this.stableIdMode = stableIdMode;
        }
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(Config.DEFAULT, adapterArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    public boolean addAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.f6786a.b(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int findRelativeAdapterPositionIn(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, @NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        return this.f6786a.getLocalAdapterPosition(adapter, viewHolder, i2);
    }

    @NonNull
    public List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getAdapters() {
        return Collections.unmodifiableList(this.f6786a.getCopyOfAdapters());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f6786a.getTotalCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return this.f6786a.getItemId(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.f6786a.getItemViewType(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f6786a.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        this.f6786a.onBindViewHolder(viewHolder, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return this.f6786a.onCreateViewHolder(viewGroup, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f6786a.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.f6786a.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.f6786a.onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.f6786a.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.f6786a.onViewRecycled(viewHolder);
    }

    public boolean removeAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.f6786a.l(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z3) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(@NonNull RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull Config config, @NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(config, Arrays.asList(adapterArr));
    }

    public boolean addAdapter(int i2, @NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.f6786a.a(i2, adapter);
    }

    public ConcatAdapter(@NonNull List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this(Config.DEFAULT, list);
    }

    public ConcatAdapter(@NonNull Config config, @NonNull List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this.f6786a = new ConcatAdapterController(this, config);
        for (RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter : list) {
            addAdapter(adapter);
        }
        super.setHasStableIds(this.f6786a.hasStableIds());
    }
}
