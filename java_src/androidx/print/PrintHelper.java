package androidx.print;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class PrintHelper {
    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_COLOR = 2;
    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final String f6654g = "PrintHelper";

    /* renamed from: h  reason: collision with root package name */
    private static final int f6655h = 3500;

    /* renamed from: i  reason: collision with root package name */
    static final boolean f6656i;

    /* renamed from: j  reason: collision with root package name */
    static final boolean f6657j;

    /* renamed from: a  reason: collision with root package name */
    final Context f6658a;

    /* renamed from: b  reason: collision with root package name */
    BitmapFactory.Options f6659b = null;

    /* renamed from: c  reason: collision with root package name */
    final Object f6660c = new Object();

    /* renamed from: d  reason: collision with root package name */
    int f6661d = 2;

    /* renamed from: e  reason: collision with root package name */
    int f6662e = 2;

    /* renamed from: f  reason: collision with root package name */
    int f6663f = 1;

    /* loaded from: classes.dex */
    public interface OnPrintFinishCallback {
        void onFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public class PrintBitmapAdapter extends PrintDocumentAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final String f6672a;

        /* renamed from: b  reason: collision with root package name */
        private final int f6673b;

        /* renamed from: c  reason: collision with root package name */
        private final Bitmap f6674c;

        /* renamed from: d  reason: collision with root package name */
        private final OnPrintFinishCallback f6675d;

        /* renamed from: e  reason: collision with root package name */
        private PrintAttributes f6676e;

        PrintBitmapAdapter(String str, int i2, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
            this.f6672a = str;
            this.f6673b = i2;
            this.f6674c = bitmap;
            this.f6675d = onPrintFinishCallback;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            OnPrintFinishCallback onPrintFinishCallback = this.f6675d;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.f6676e = printAttributes2;
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f6672a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.g(this.f6676e, this.f6673b, this.f6674c, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public class PrintUriAdapter extends PrintDocumentAdapter {

        /* renamed from: a  reason: collision with root package name */
        final String f6678a;

        /* renamed from: b  reason: collision with root package name */
        final Uri f6679b;

        /* renamed from: c  reason: collision with root package name */
        final OnPrintFinishCallback f6680c;

        /* renamed from: d  reason: collision with root package name */
        final int f6681d;

        /* renamed from: e  reason: collision with root package name */
        PrintAttributes f6682e;

        /* renamed from: f  reason: collision with root package name */
        AsyncTask<Uri, Boolean, Bitmap> f6683f;

        /* renamed from: g  reason: collision with root package name */
        Bitmap f6684g = null;

        PrintUriAdapter(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i2) {
            this.f6678a = str;
            this.f6679b = uri;
            this.f6680c = onPrintFinishCallback;
            this.f6681d = i2;
        }

        void a() {
            synchronized (PrintHelper.this.f6660c) {
                BitmapFactory.Options options = PrintHelper.this.f6659b;
                if (options != null) {
                    if (Build.VERSION.SDK_INT < 24) {
                        options.requestCancelDecode();
                    }
                    PrintHelper.this.f6659b = null;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            a();
            AsyncTask<Uri, Boolean, Bitmap> asyncTask = this.f6683f;
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            OnPrintFinishCallback onPrintFinishCallback = this.f6680c;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
            Bitmap bitmap = this.f6684g;
            if (bitmap != null) {
                bitmap.recycle();
                this.f6684g = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            synchronized (this) {
                this.f6682e = printAttributes2;
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.f6684g != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f6678a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
            } else {
                this.f6683f = new AsyncTask<Uri, Boolean, Bitmap>() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* renamed from: a */
                    public Bitmap doInBackground(Uri... uriArr) {
                        try {
                            PrintUriAdapter printUriAdapter = PrintUriAdapter.this;
                            return PrintHelper.this.f(printUriAdapter.f6679b);
                        } catch (FileNotFoundException unused) {
                            return null;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* renamed from: b */
                    public void onCancelled(Bitmap bitmap) {
                        layoutResultCallback.onLayoutCancelled();
                        PrintUriAdapter.this.f6683f = null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* renamed from: c */
                    public void onPostExecute(Bitmap bitmap) {
                        PrintAttributes.MediaSize mediaSize;
                        super.onPostExecute(bitmap);
                        if (bitmap != null && (!PrintHelper.f6656i || PrintHelper.this.f6663f == 0)) {
                            synchronized (this) {
                                mediaSize = PrintUriAdapter.this.f6682e.getMediaSize();
                            }
                            if (mediaSize != null && mediaSize.isPortrait() != PrintHelper.d(bitmap)) {
                                Matrix matrix = new Matrix();
                                matrix.postRotate(90.0f);
                                bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                            }
                        }
                        PrintUriAdapter.this.f6684g = bitmap;
                        if (bitmap != null) {
                            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(PrintUriAdapter.this.f6678a).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
                        } else {
                            layoutResultCallback.onLayoutFailed(null);
                        }
                        PrintUriAdapter.this.f6683f = null;
                    }

                    @Override // android.os.AsyncTask
                    protected void onPreExecute() {
                        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1.1
                            @Override // android.os.CancellationSignal.OnCancelListener
                            public void onCancel() {
                                PrintUriAdapter.this.a();
                                cancel(false);
                            }
                        });
                    }
                }.execute(new Uri[0]);
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.g(this.f6682e, this.f6681d, this.f6684g, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f6656i = i2 < 20 || i2 > 23;
        f6657j = i2 != 23;
    }

    public PrintHelper(@NonNull Context context) {
        this.f6658a = context;
    }

    static Bitmap a(Bitmap bitmap, int i2) {
        if (i2 != 1) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    @RequiresApi(19)
    private static PrintAttributes.Builder b(PrintAttributes printAttributes) {
        PrintAttributes.Builder minMargins = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        if (Build.VERSION.SDK_INT >= 23 && printAttributes.getDuplexMode() != 0) {
            minMargins.setDuplexMode(printAttributes.getDuplexMode());
        }
        return minMargins;
    }

    static Matrix c(int i2, int i4, RectF rectF, int i5) {
        float min;
        Matrix matrix = new Matrix();
        float f4 = i2;
        float width = rectF.width() / f4;
        if (i5 == 2) {
            min = Math.max(width, rectF.height() / i4);
        } else {
            min = Math.min(width, rectF.height() / i4);
        }
        matrix.postScale(min, min);
        matrix.postTranslate((rectF.width() - (f4 * min)) / 2.0f, (rectF.height() - (i4 * min)) / 2.0f);
        return matrix;
    }

    static boolean d(Bitmap bitmap) {
        return bitmap.getWidth() <= bitmap.getHeight();
    }

    private Bitmap e(Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        Context context;
        if (uri != null && (context = this.f6658a) != null) {
            InputStream inputStream = null;
            try {
                InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    return decodeStream;
                } catch (Throwable th) {
                    th = th;
                    inputStream = openInputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
    }

    public static boolean systemSupportsPrint() {
        return Build.VERSION.SDK_INT >= 19;
    }

    Bitmap f(Uri uri) throws FileNotFoundException {
        BitmapFactory.Options options;
        if (uri != null && this.f6658a != null) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            e(uri, options2);
            int i2 = options2.outWidth;
            int i4 = options2.outHeight;
            if (i2 > 0 && i4 > 0) {
                int max = Math.max(i2, i4);
                int i5 = 1;
                while (max > 3500) {
                    max >>>= 1;
                    i5 <<= 1;
                }
                if (i5 > 0 && Math.min(i2, i4) / i5 > 0) {
                    synchronized (this.f6660c) {
                        options = new BitmapFactory.Options();
                        this.f6659b = options;
                        options.inMutable = true;
                        options.inSampleSize = i5;
                    }
                    try {
                        Bitmap e4 = e(uri, options);
                        synchronized (this.f6660c) {
                            this.f6659b = null;
                        }
                        return e4;
                    } catch (Throwable th) {
                        synchronized (this.f6660c) {
                            this.f6659b = null;
                            throw th;
                        }
                    }
                }
            }
            return null;
        }
        throw new IllegalArgumentException("bad argument to getScaledBitmap");
    }

    @RequiresApi(19)
    void g(final PrintAttributes printAttributes, final int i2, final Bitmap bitmap, final ParcelFileDescriptor parcelFileDescriptor, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        final PrintAttributes build = f6657j ? printAttributes : b(printAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
        new AsyncTask<Void, Void, Throwable>() { // from class: androidx.print.PrintHelper.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* renamed from: a */
            public Throwable doInBackground(Void... voidArr) {
                RectF rectF;
                try {
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelper.this.f6658a, build);
                    Bitmap a4 = PrintHelper.a(bitmap, build.getColorMode());
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PdfDocument.Page startPage = printedPdfDocument.startPage(1);
                    boolean z3 = PrintHelper.f6657j;
                    if (z3) {
                        rectF = new RectF(startPage.getInfo().getContentRect());
                    } else {
                        PrintedPdfDocument printedPdfDocument2 = new PrintedPdfDocument(PrintHelper.this.f6658a, printAttributes);
                        PdfDocument.Page startPage2 = printedPdfDocument2.startPage(1);
                        RectF rectF2 = new RectF(startPage2.getInfo().getContentRect());
                        printedPdfDocument2.finishPage(startPage2);
                        printedPdfDocument2.close();
                        rectF = rectF2;
                    }
                    Matrix c4 = PrintHelper.c(a4.getWidth(), a4.getHeight(), rectF, i2);
                    if (!z3) {
                        c4.postTranslate(rectF.left, rectF.top);
                        startPage.getCanvas().clipRect(rectF);
                    }
                    startPage.getCanvas().drawBitmap(a4, c4, null);
                    printedPdfDocument.finishPage(startPage);
                    if (cancellationSignal.isCanceled()) {
                        printedPdfDocument.close();
                        ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
                        if (parcelFileDescriptor2 != null) {
                            try {
                                parcelFileDescriptor2.close();
                            } catch (IOException unused) {
                            }
                        }
                        if (a4 != bitmap) {
                            a4.recycle();
                        }
                        return null;
                    }
                    printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                    printedPdfDocument.close();
                    ParcelFileDescriptor parcelFileDescriptor3 = parcelFileDescriptor;
                    if (parcelFileDescriptor3 != null) {
                        try {
                            parcelFileDescriptor3.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (a4 != bitmap) {
                        a4.recycle();
                    }
                    return null;
                } catch (Throwable th) {
                    return th;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* renamed from: b */
            public void onPostExecute(Throwable th) {
                if (cancellationSignal.isCanceled()) {
                    writeResultCallback.onWriteCancelled();
                } else if (th == null) {
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    writeResultCallback.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }

    public int getColorMode() {
        return this.f6662e;
    }

    public int getOrientation() {
        if (Build.VERSION.SDK_INT < 19 || this.f6663f != 0) {
            return this.f6663f;
        }
        return 1;
    }

    public int getScaleMode() {
        return this.f6661d;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap) {
        printBitmap(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void setColorMode(int i2) {
        this.f6662e = i2;
    }

    public void setOrientation(int i2) {
        this.f6663f = i2;
    }

    public void setScaleMode(int i2) {
        this.f6661d = i2;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap, @Nullable OnPrintFinishCallback onPrintFinishCallback) {
        PrintAttributes.MediaSize mediaSize;
        if (Build.VERSION.SDK_INT < 19 || bitmap == null) {
            return;
        }
        PrintManager printManager = (PrintManager) this.f6658a.getSystemService("print");
        if (d(bitmap)) {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
        } else {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
        }
        printManager.print(str, new PrintBitmapAdapter(str, this.f6661d, bitmap, onPrintFinishCallback), new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.f6662e).build());
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri) throws FileNotFoundException {
        printBitmap(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri, @Nullable OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        PrintUriAdapter printUriAdapter = new PrintUriAdapter(str, uri, onPrintFinishCallback, this.f6661d);
        PrintManager printManager = (PrintManager) this.f6658a.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.f6662e);
        int i2 = this.f6663f;
        if (i2 == 1 || i2 == 0) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (i2 == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, printUriAdapter, builder.build());
    }
}
