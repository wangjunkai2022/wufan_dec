.class Lcom/ss/android/downloadlib/addownload/compliance/a$2;
.super Ljava/lang/Object;
.source "AdLpAppInfoDialog.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/compliance/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/compliance/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$2;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$2;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->b(Lcom/ss/android/downloadlib/addownload/compliance/a;)Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$2;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->a(Lcom/ss/android/downloadlib/addownload/compliance/a;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(IJ)V

    :goto_0
    return-void
.end method
