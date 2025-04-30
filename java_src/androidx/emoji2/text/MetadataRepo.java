package androidx.emoji2.text;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
@AnyThread
@RequiresApi(19)
/* loaded from: classes.dex */
public final class MetadataRepo {

    /* renamed from: e  reason: collision with root package name */
    private static final int f5594e = 1024;

    /* renamed from: f  reason: collision with root package name */
    private static final String f5595f = "EmojiCompat.MetadataRepo.create";
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MetadataList f5596a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final char[] f5597b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Node f5598c = new Node(1024);
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Typeface f5599d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class Node {

        /* renamed from: a  reason: collision with root package name */
        private final SparseArray<Node> f5600a;

        /* renamed from: b  reason: collision with root package name */
        private EmojiMetadata f5601b;

        private Node() {
            this(1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Node a(int i2) {
            SparseArray<Node> sparseArray = this.f5600a;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final EmojiMetadata b() {
            return this.f5601b;
        }

        void c(@NonNull EmojiMetadata emojiMetadata, int i2, int i4) {
            Node a4 = a(emojiMetadata.getCodepointAt(i2));
            if (a4 == null) {
                a4 = new Node();
                this.f5600a.put(emojiMetadata.getCodepointAt(i2), a4);
            }
            if (i4 > i2) {
                a4.c(emojiMetadata, i2 + 1, i4);
            } else {
                a4.f5601b = emojiMetadata;
            }
        }

        Node(int i2) {
            this.f5600a = new SparseArray<>(i2);
        }
    }

    private MetadataRepo(@NonNull Typeface typeface, @NonNull MetadataList metadataList) {
        this.f5599d = typeface;
        this.f5596a = metadataList;
        this.f5597b = new char[metadataList.listLength() * 2];
        a(metadataList);
    }

    private void a(MetadataList metadataList) {
        int listLength = metadataList.listLength();
        for (int i2 = 0; i2 < listLength; i2++) {
            EmojiMetadata emojiMetadata = new EmojiMetadata(this, i2);
            Character.toChars(emojiMetadata.getId(), this.f5597b, i2 * 2);
            e(emojiMetadata);
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static MetadataRepo create(@NonNull Typeface typeface) {
        try {
            TraceCompat.beginSection(f5595f);
            return new MetadataRepo(typeface, new MetadataList());
        } finally {
            TraceCompat.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int b() {
        return this.f5596a.version();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Node c() {
        return this.f5598c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Typeface d() {
        return this.f5599d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    void e(@NonNull EmojiMetadata emojiMetadata) {
        Preconditions.checkNotNull(emojiMetadata, "emoji metadata cannot be null");
        Preconditions.checkArgument(emojiMetadata.getCodepointsLength() > 0, "invalid metadata codepoint length");
        this.f5598c.c(emojiMetadata, 0, emojiMetadata.getCodepointsLength() - 1);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public char[] getEmojiCharArray() {
        return this.f5597b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public MetadataList getMetadataList() {
        return this.f5596a;
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull InputStream inputStream) throws IOException {
        try {
            TraceCompat.beginSection(f5595f);
            return new MetadataRepo(typeface, MetadataListReader.c(inputStream));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull ByteBuffer byteBuffer) throws IOException {
        try {
            TraceCompat.beginSection(f5595f);
            return new MetadataRepo(typeface, MetadataListReader.d(byteBuffer));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull AssetManager assetManager, @NonNull String str) throws IOException {
        try {
            TraceCompat.beginSection(f5595f);
            return new MetadataRepo(Typeface.createFromAsset(assetManager, str), MetadataListReader.b(assetManager, str));
        } finally {
            TraceCompat.endSection();
        }
    }
}
