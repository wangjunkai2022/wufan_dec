package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import java.util.List;
@RequiresApi(22)
/* loaded from: classes.dex */
class PlaybackStateCompatApi22 {
    private PlaybackStateCompatApi22() {
    }

    public static Bundle getExtras(Object obj) {
        return ((PlaybackState) obj).getExtras();
    }

    public static Object newInstance(int i2, long j4, long j5, float f4, long j6, CharSequence charSequence, long j7, List<Object> list, long j8, Bundle bundle) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(i2, j4, f4, j7);
        builder.setBufferedPosition(j5);
        builder.setActions(j6);
        builder.setErrorMessage(charSequence);
        Iterator<Object> it2 = list.iterator();
        while (it2.hasNext()) {
            builder.addCustomAction((PlaybackState.CustomAction) it2.next());
        }
        builder.setActiveQueueItemId(j8);
        builder.setExtras(bundle);
        return builder.build();
    }
}
