package androidx.recyclerview.widget;

import androidx.recyclerview.widget.TileList;
/* loaded from: classes2.dex */
interface ThreadUtil<T> {

    /* loaded from: classes2.dex */
    public interface BackgroundCallback<T> {
        void loadTile(int i2, int i4);

        void recycleTile(TileList.Tile<T> tile);

        void refresh(int i2);

        void updateRange(int i2, int i4, int i5, int i6, int i7);
    }

    /* loaded from: classes2.dex */
    public interface MainThreadCallback<T> {
        void addTile(int i2, TileList.Tile<T> tile);

        void removeTile(int i2, int i4);

        void updateItemCount(int i2, int i4);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}
