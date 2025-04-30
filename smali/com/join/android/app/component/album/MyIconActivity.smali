.class public Lcom/join/android/app/component/album/MyIconActivity;
.super Lcom/BaseActivity;
.source "MyIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final v:I = 0x101

.field private static final w:I = 0x102

.field private static final x:Ljava/lang/String;


# instance fields
.field a:Lcom/MApplication;

.field private b:I

.field private c:Lcom/join/android/app/component/album/a;

.field private d:Lcom/join/android/app/component/album/lib/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/GridView;

.field private g:Lcom/join/android/app/component/album/adapter/d;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/join/android/app/component/album/lib/a;

.field private m:Landroid/content/Context;

.field private final n:Z

.field private o:Landroid/net/Uri;

.field private p:I

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/os/Handler;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/component/album/MyIconActivity;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->n:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->q:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyIconActivity$d;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->r:Landroid/os/Handler;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->s:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->t:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic E0(Lcom/join/android/app/component/album/MyIconActivity;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->q:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->q:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic G0(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)Lcom/join/android/app/component/album/lib/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->l:Lcom/join/android/app/component/album/lib/a;

    return-object p1
.end method

.method static synthetic I0(Lcom/join/android/app/component/album/MyIconActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->d1()V

    return-void
.end method

.method static synthetic J0(Lcom/join/android/app/component/album/MyIconActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->e1(Z)V

    return-void
.end method

.method static synthetic K0(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->h1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic L0(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/lib/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    return-object p0
.end method

.method static synthetic M0(Lcom/join/android/app/component/album/MyIconActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->p:I

    return p0
.end method

.method static synthetic N0(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    return-object p0
.end method

.method static synthetic O0(Lcom/join/android/app/component/album/MyIconActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->m:Landroid/content/Context;

    return-object p0
.end method

.method private P0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "data"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->T0(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->V0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    invoke-direct {p0, p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->V0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private Q0()Lcom/join/android/app/component/album/lib/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/a;

    invoke-direct {v0}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/join/android/app/component/album/MyIconActivity;->x:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    return-object v0
.end method

.method private U0()Lcom/join/android/app/component/album/lib/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/a;

    invoke-direct {v0}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    const-string v1, "All"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    const-string v1, "\u5168\u90e8"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    return-object v0
.end method

.method private V0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "file"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "content"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 11
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_5

    .line 13
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 14
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_0
    return-object v0
.end method

.method private W0(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "key_selected_images"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private X0()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2
    new-instance v0, Lcom/join/android/app/component/album/a;

    iget v7, p0, Lcom/join/android/app/component/album/MyIconActivity;->b:I

    iget-object v8, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    const/4 v6, -0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/join/android/app/component/album/a;-><init>(Landroid/content/Context;Landroid/view/View;IILcom/join/android/app/component/album/lib/b;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    .line 3
    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$b;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$c;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$c;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/a;->f(Lcom/join/android/app/component/album/a$e;)V

    return-void
.end method

.method private Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->i()V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->U0()Lcom/join/android/app/component/album/lib/a;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->l:Lcom/join/android/app/component/album/lib/a;

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->i()V

    return-void
.end method

.method private Z0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    const v0, 0x7f0900b3

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->f:Landroid/widget/GridView;

    const v0, 0x7f09013e

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->j:Landroid/widget/ImageView;

    const v1, 0x7f0908a2

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0900b0

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->k:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->h:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->d:Lcom/join/android/app/component/album/lib/b;

    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$a;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->l(Lcom/join/android/app/component/album/lib/b$g;)V

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->e1(Z)V

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->Y0()V

    return-void
.end method

.method private a1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->b:I

    return-void
.end method

.method private b1(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/BaseActivity;->showLoading()V

    .line 3
    :cond_0
    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity$e;-><init>(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c1(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->s:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->t:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->h1(Ljava/util/List;)V

    return-void
.end method

.method private d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->l:Lcom/join/android/app/component/album/lib/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->c1(Lcom/join/android/app/component/album/lib/a;)V

    :cond_0
    return-void
.end method

.method private e1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f08014b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f080150

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private f1()V
    .locals 0

    return-void
.end method

.method private g1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    const v1, 0x7f1204c6

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 3
    invoke-direct {p0, v1}, Lcom/join/android/app/component/album/MyIconActivity;->e1(Z)V

    return-void
.end method

.method private h1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "camera"

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/adapter/d;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance p1, Lcom/join/android/app/component/album/adapter/d;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    iget-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->t:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/join/android/app/component/album/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcom/join/android/app/component/album/adapter/d;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->u:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/join/android/app/component/album/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->f:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->f:Landroid/widget/GridView;

    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyIconActivity$f;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->g:Lcom/join/android/app/component/album/adapter/d;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/adapter/d;->notifyDataSetChanged()V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->e1(Z)V

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->c:Lcom/join/android/app/component/album/a;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected R0()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Camera/IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 10
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const-string v2, "output"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->o:Landroid/net/Uri;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v1, 0x102

    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u8bf7\u786e\u8ba4\u5df2\u7ecf\u63d2\u5165SD\u5361"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected S0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x101

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public T0(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Title"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x102

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->o:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->V0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p3}, Lcom/join/android/app/component/album/MyIconActivity;->P0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity;->m:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/android/app/component/album/CropPicActivity_;->S0(Landroid/content/Context;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/component/album/CropPicActivity_$k;->a(Ljava/lang/String;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p1

    iget p2, p0, Lcom/join/android/app/component/album/MyIconActivity;->p:I

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->c(I)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013e

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0900b0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0908a2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0908a1

    if-ne p1, v0, :cond_2

    :cond_1
    const p1, 0x7f0900b6

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->g1(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c04c8

    .line 2
    invoke-virtual {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 3
    iput-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->m:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/MApplication;

    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->a:Lcom/MApplication;

    .line 5
    invoke-virtual {p1, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->a1()V

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->Z0()V

    .line 8
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->X0()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->p:I

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->d1()V

    return-void
.end method
