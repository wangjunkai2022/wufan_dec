.class public Lcom/join/android/app/component/album/CropPicActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CropPicActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0112
.end annotation


# static fields
.field static o:Ljava/lang/String; = "CropPicActivity"


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ClipImageLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private e:Landroid/net/Uri;

.field private f:Landroid/content/Context;

.field g:Lcom/join/mgps/rpc/b;

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private k:Lcom/join/mgps/dialog/x0;

.field l:Lcom/MApplication;

.field m:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    return-void
.end method


# virtual methods
.method C0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->k:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method D0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->l:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->l()V

    .line 2
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/listener/a;->c()V

    return-void
.end method

.method public E0(Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/u;->a()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v2, 0x1

    const/16 v3, 0x12c

    .line 6
    invoke-static {p1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x64

    .line 8
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    div-int/lit16 v5, v5, 0x400

    const/16 v6, 0x1e

    if-le v5, v6, :cond_2

    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v4, v4, -0xa

    .line 11
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 12
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    :goto_1
    :try_start_3
    iget p1, p0, Lcom/join/android/app/component/album/CropPicActivity;->m:I

    if-ne p1, v2, :cond_3

    .line 18
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/album/CropPicActivity;->J0(Ljava/io/File;)V

    .line 19
    invoke-static {}, Lcom/join/mgps/Util/u;->c()Ljava/io/File;

    move-result-object p1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 23
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->D0()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 25
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->c:Lcom/join/mgps/customview/ClipImageLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipImageLayout;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->E0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method G0(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->c:Lcom/join/mgps/customview/ClipImageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->c:Lcom/join/mgps/customview/ClipImageLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipImageLayout;->getmZoomImageView()Lcom/join/mgps/customview/ClipZoomImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->c:Lcom/join/mgps/customview/ClipImageLayout;

    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/ClipImageLayout;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->G0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public I0(Lcom/join/mgps/dto/AccountBean;Ljava/io/File;Landroid/content/Context;)Z
    .locals 10

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    .line 2
    new-instance v0, Lcom/join/mgps/dto/UploadPortraitRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;-><init>()V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setUid(I)V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/user/upfile/upload_user_head_portrait"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "files"

    const/4 v2, 0x4

    new-array v7, v2, [Lcom/papa/sim/statistic/http/b$n;

    new-instance v2, Lcom/papa/sim/statistic/http/b$n;

    const-string v6, "uid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v7, p3

    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    const-string v2, "token"

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    new-instance v6, Lcom/papa/sim/statistic/http/b$n;

    const-string v8, "device_id"

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getDevice_id()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v7, v1

    const/4 v1, 0x3

    new-instance v6, Lcom/papa/sim/statistic/http/b$n;

    const-string v8, "sign"

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v7, v1

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/http/b$q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/UploadResultMainBean;

    invoke-virtual {v1, v0, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UploadResultMainBean;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iput-boolean v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    .line 18
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    goto :goto_0

    .line 20
    :cond_0
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    goto :goto_0

    .line 21
    :cond_1
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 23
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    .line 24
    :goto_0
    iget-boolean p1, p0, Lcom/join/android/app/component/album/CropPicActivity;->n:Z

    return p1
.end method

.method J0(Ljava/io/File;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->C0()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->j:Lcom/join/mgps/dto/AccountBean;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->j:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, v2}, Lcom/join/android/app/component/album/CropPicActivity;->I0(Lcom/join/mgps/dto/AccountBean;Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->D0()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->l:Lcom/MApplication;

    .line 2
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 3
    iput-object p0, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->k:Lcom/join/mgps/dialog/x0;

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->g:Lcom/join/mgps/rpc/b;

    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLoading()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method showLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u88c1\u526a\u56fe\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->b:Landroid/widget/Button;

    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->H0()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->k:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->k:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
