.class Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;
.super Landroid/text/style/ImageSpan;
.source "DownloadHighSpeedingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field public static final c:I = 0x2


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/content/Context;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->b:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->b:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    .line 6
    invoke-direct {p0, p2, p3, p4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->b:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    .line 4
    invoke-direct {p0, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->a:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object p3, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;->b:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    iget p3, p3, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->j:I

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget p3, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/4 p6, 0x1

    if-ne p3, p6, :cond_0

    .line 5
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p4, p3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p4, p7, p3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 8
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p4, p7

    add-int/2addr p4, p7

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, p3

    :goto_0
    int-to-float p3, p4

    .line 9
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
