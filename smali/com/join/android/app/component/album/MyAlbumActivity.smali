.class public Lcom/join/android/app/component/album/MyAlbumActivity;
.super Lcom/BaseActivity;
.source "MyAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final A:Ljava/lang/String;

.field private static B:I = 0x0

.field public static final w:Ljava/lang/String; = "key_selected_images"

.field public static final x:I = 0x100

.field private static final y:I = 0x101

.field private static final z:I = 0x102


# instance fields
.field private a:I

.field private b:Lcom/join/android/app/component/album/a;

.field private c:Lcom/join/android/app/component/album/lib/b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private g:Lcom/join/android/app/component/album/adapter/c;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/join/android/app/component/album/lib/a;

.field private final p:Z

.field private q:Landroid/net/Uri;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field public s:Landroid/os/Handler;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/util/List;
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

    sput-object v0, Lcom/join/android/app/component/album/MyAlbumActivity;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->p:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->r:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/join/android/app/component/album/MyAlbumActivity$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$d;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->s:Landroid/os/Handler;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->t:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->u:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    return-void
.end method

.method static synthetic E0(Lcom/join/android/app/component/album/MyAlbumActivity;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->r:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/android/app/component/album/MyAlbumActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->r:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic G0(Lcom/join/android/app/component/album/MyAlbumActivity;)Lcom/join/android/app/component/album/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/android/app/component/album/MyAlbumActivity;Lcom/join/android/app/component/album/lib/a;)Lcom/join/android/app/component/album/lib/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->o:Lcom/join/android/app/component/album/lib/a;

    return-object p1
.end method

.method static synthetic I0(Lcom/join/android/app/component/album/MyAlbumActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->d1()V

    return-void
.end method

.method static synthetic J0(Lcom/join/android/app/component/album/MyAlbumActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->f1(Z)V

    return-void
.end method

.method static synthetic K0(Lcom/join/android/app/component/album/MyAlbumActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic L0(Lcom/join/android/app/component/album/MyAlbumActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->j1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/android/app/component/album/MyAlbumActivity;)Lcom/join/android/app/component/album/lib/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->c:Lcom/join/android/app/component/album/lib/b;

    return-object p0
.end method

.method private N0(Landroid/content/Intent;)Ljava/lang/String;
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

    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->R0(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->T0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

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
    invoke-direct {p0, p0, v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->T0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private O0()Lcom/join/android/app/component/album/lib/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/a;

    invoke-direct {v0}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/join/android/app/component/album/MyAlbumActivity;->A:Ljava/lang/String;

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

.method private S0()Lcom/join/android/app/component/album/lib/a;
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

.method private T0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "file"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "content"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-le p1, v2, :cond_4

    .line 11
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 12
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method private U0(Landroid/content/Intent;)Ljava/util/List;
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

.method private V0()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2
    iget v7, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->a:I

    .line 3
    new-instance v0, Lcom/join/android/app/component/album/a;

    iget-object v8, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->c:Lcom/join/android/app/component/album/lib/b;

    const/4 v6, -0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/join/android/app/component/album/a;-><init>(Landroid/content/Context;Landroid/view/View;IILcom/join/android/app/component/album/lib/b;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    .line 4
    new-instance v1, Lcom/join/android/app/component/album/MyAlbumActivity$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$b;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    new-instance v1, Lcom/join/android/app/component/album/MyAlbumActivity$c;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$c;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/a;->f(Lcom/join/android/app/component/album/a$e;)V

    return-void
.end method

.method private W0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->S0()Lcom/join/android/app/component/album/lib/a;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->o:Lcom/join/android/app/component/album/lib/a;

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->c:Lcom/join/android/app/component/album/lib/b;

    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->i()V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->c:Lcom/join/android/app/component/album/lib/b;

    const v0, 0x7f0900b6

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->h:Landroid/view/View;

    const v0, 0x7f090311

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->m:Landroid/view/View;

    const v0, 0x7f0900b3

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->f:Landroid/widget/GridView;

    const v0, 0x7f09013e

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f090b5f

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    const v0, 0x7f0908a2

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0900b0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f090e00

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->j:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->c:Lcom/join/android/app/component/album/lib/b;

    new-instance v1, Lcom/join/android/app/component/album/MyAlbumActivity$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$a;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->l(Lcom/join/android/app/component/album/lib/b$g;)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->f1(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->U0(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    .line 16
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->e1()V

    .line 17
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->W0()V

    return-void
.end method

.method private Y0()V
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

    iput v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->a:I

    return-void
.end method

.method private Z0(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/BaseActivity;->showLoading()V

    .line 3
    :cond_0
    new-instance v0, Lcom/join/android/app/component/album/MyAlbumActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity$e;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;Lcom/join/android/app/component/album/lib/a;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a1(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->t:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->u:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->j1(Ljava/util/List;)V

    return-void
.end method

.method private d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->o:Lcom/join/android/app/component/album/lib/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->a1(Lcom/join/android/app/component/album/lib/a;)V

    :cond_0
    return-void
.end method

.method private e1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    const-string v1, ")"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c\u6210("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c\u6210(0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private f1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f08014b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f080150

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private g1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "key_selected_images"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x100

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private h1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    const v1, 0x7f1204c6

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/join/android/app/component/album/MyAlbumActivity;->i1(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    .line 3
    invoke-direct {p0, v1}, Lcom/join/android/app/component/album/MyAlbumActivity;->f1(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private j1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "camera"

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->g:Lcom/join/android/app/component/album/adapter/c;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/adapter/c;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance p1, Lcom/join/android/app/component/album/adapter/c;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/join/android/app/component/album/adapter/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->g:Lcom/join/android/app/component/album/adapter/c;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcom/join/android/app/component/album/adapter/c;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->v:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/join/android/app/component/album/adapter/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->g:Lcom/join/android/app/component/album/adapter/c;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->f:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->g:Lcom/join/android/app/component/album/adapter/c;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->f:Landroid/widget/GridView;

    new-instance v0, Lcom/join/android/app/component/album/MyAlbumActivity$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$f;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->g:Lcom/join/android/app/component/album/adapter/c;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/adapter/c;->notifyDataSetChanged()V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->f1(Z)V

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->b:Lcom/join/android/app/component/album/a;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected P0()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    iput-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->q:Landroid/net/Uri;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0x102

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u8bf7\u786e\u8ba4\u5df2\u7ecf\u63d2\u5165SD\u5361"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected Q0()V
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

.method public R0(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
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

.method public declared-synchronized b1(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c1(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f09069a

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0906fe

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f0809fe

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->e1()V

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/android/app/component/album/MyAlbumActivity;->b1(Ljava/lang/String;Z)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    if-ne v1, v3, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6700\u591a\u9009\u62e9"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u5f20\u56fe"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "#7f989898"

    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f080a00

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->e1()V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->b1(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public i1(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void
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
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->q:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->T0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p3}, Lcom/join/android/app/component/album/MyAlbumActivity;->N0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget v0, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    if-lt p2, v0, :cond_4

    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/join/android/app/component/album/MyAlbumActivity;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/join/android/app/component/album/MyAlbumActivity;->b1(Ljava/lang/String;Z)V

    .line 11
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->g1()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    const-string p2, "\u83b7\u53d6\u56fe\u7247\u5931\u8d25"

    .line 12
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

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
    const v0, 0x7f090b5f

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->g1()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900b0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0908a2

    if-eq p1, v0, :cond_2

    const v0, 0x7f0908a1

    if-ne p1, v0, :cond_3

    :cond_2
    const p1, 0x7f0900b6

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->h1(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c04c4

    .line 2
    invoke-virtual {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MAX_PICK_SIZE"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/join/android/app/component/album/MyAlbumActivity;->B:I

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->Y0()V

    .line 5
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->X0()V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->V0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyAlbumActivity;->d1()V

    return-void
.end method
