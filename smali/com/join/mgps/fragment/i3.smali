.class public Lcom/join/mgps/fragment/i3;
.super Landroidx/fragment/app/Fragment;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/c;
.implements Lcom/join/android/app/common/http/g;
.implements Lcom/join/mgps/listener/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/i3$w;,
        Lcom/join/mgps/fragment/i3$y;,
        Lcom/join/mgps/fragment/i3$v;,
        Lcom/join/mgps/fragment/i3$u;,
        Lcom/join/mgps/fragment/i3$x;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c02e9
.end annotation


# instance fields
.field A:Lcom/join/mgps/fragment/i3$u;

.field B:Z

.field C:Z

.field D:Lcom/join/mgps/dialog/x;

.field E:Lcom/join/mgps/dialog/x0;

.field F:Lcom/join/mgps/dto/ArchiveDataBean;

.field G:Z

.field H:Lcom/join/mgps/dialog/x0;

.field private I:Z

.field J:Z

.field K:Z

.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field n0:I

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field o0:Z

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field p0:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/join/mgps/dto/AccountBean;

.field q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/join/mgps/rpc/c;

.field r0:I

.field s:Ljava/lang/String;

.field s0:J

.field t:I

.field t0:J

.field u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field u0:J

.field v:Landroid/content/IntentFilter;

.field v0:J

.field w:Landroid/content/IntentFilter;

.field w0:I

.field x:Lcom/join/mgps/fragment/i3$v;

.field x0:Ljava/lang/String;

.field y:Lcom/join/mgps/fragment/i3$w;

.field z:Lcom/join/mgps/fragment/i3$y;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->B:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->C:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->G:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/fragment/i3;->I:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->J:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/fragment/i3;->K:Z

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/i3;->n0:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 10
    iput v0, p0, Lcom/join/mgps/fragment/i3;->r0:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/join/mgps/fragment/i3;->s0:J

    .line 12
    iput-wide v1, p0, Lcom/join/mgps/fragment/i3;->t0:J

    .line 13
    iput-wide v1, p0, Lcom/join/mgps/fragment/i3;->u0:J

    .line 14
    iput-wide v1, p0, Lcom/join/mgps/fragment/i3;->v0:J

    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/i3;->w0:I

    return-void
.end method

.method private G0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->q0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->G:Z

    .line 8
    new-instance v0, Lcom/join/mgps/fragment/i3$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$j;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/i3;->I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    return-void
.end method

.method private H0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->q0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/i3;->q0:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/fragment/i3;->G:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/i3;->I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    .line 13
    iget p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    goto :goto_0

    .line 14
    :cond_1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    :goto_0
    return-void
.end method

.method private K0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/i3$x;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    new-instance v2, Lcom/join/mgps/dto/RecoverFileJson;

    invoke-direct {v2}, Lcom/join/mgps/dto/RecoverFileJson;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RecoverFileJson;->setGameID(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RecoverFileJson;->setUserID(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/i3;->x0(Ljava/lang/String;)[B

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v4}, Lcom/join/mgps/fragment/i3;->t0(S)[B

    move-result-object v4

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/v0;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p0, v4}, Lcom/join/mgps/fragment/i3;->x0(Ljava/lang/String;)[B

    move-result-object v4

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v7, "WFSTE"

    .line 20
    invoke-virtual {p0, v7}, Lcom/join/mgps/fragment/i3;->x0(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 26
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 27
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 28
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    :cond_1
    const/16 p3, 0x400

    new-array p3, p3, [B

    .line 29
    :goto_1
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 30
    invoke-virtual {v1, p3, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 32
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 33
    invoke-static {p4}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 34
    invoke-virtual {v0, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 35
    invoke-interface {p5, v5, p1}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 37
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 38
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_6
    const-string p3, "\u5199\u5165\u4fe1\u606f\u5f02\u5e38"

    .line 39
    invoke-virtual {p0, p3}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 41
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_2

    .line 43
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_3

    .line 44
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_4
    move-exception p2

    .line 45
    :try_start_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :cond_3
    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    .line 47
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p1, "\u6587\u4ef6\u6ca1\u627e\u5230\u5f02\u5e38"

    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_4
    :goto_5
    return-void

    .line 49
    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method static synthetic N(Lcom/join/mgps/fragment/i3;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->h0()Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->b0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/i3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/i3;->I:Z

    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/i3;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/i3;->I:Z

    return p1
.end method

.method static synthetic R(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->H0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/i3;->a0(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->G0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a0(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/u;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/u;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 3
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.cloud.downCloud"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "downCloud"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private b0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cloud.downCloud.all"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    check-cast p1, Ljava/io/Serializable;

    const-string v1, "downClouds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c0()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveColud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    return-object v0
.end method

.method private f0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5feb\u901f\u5b58\u6863"

    return-object p1

    :cond_0
    const-string v0, "99"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u81ea\u52a8\u4fdd\u5b58\u7684\u5b58\u6863"

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u6863"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private m0(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/event/e;->j(I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private n0(I)V
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->c0()Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->r:Lcom/join/mgps/rpc/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->h(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->F:Lcom/join/mgps/dto/ArchiveDataBean;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->F:Lcom/join/mgps/dto/ArchiveDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->A0()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->F:Lcom/join/mgps/dto/ArchiveDataBean;

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    return-void

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;->getCloudList()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/i3;->n:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v3, 0x6

    .line 14
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/fragment/i3;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 19
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->updateUi(Ljava/util/List;)V

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;->getCloudList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->p:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->n:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->C0(Ljava/util/List;)V

    goto :goto_2

    .line 23
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->e0()V

    :cond_9
    :goto_2
    return-void
.end method

.method private o0()V
    .locals 11

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "_v2"

    if-eqz v2, :cond_8

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/RomArchived;

    .line 6
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/RomArchived;

    if-eqz v8, :cond_5

    if-nez v7, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 13
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 17
    :cond_8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    .line 19
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x1

    goto :goto_2

    .line 20
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 21
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    if-eqz v3, :cond_d

    if-nez v5, :cond_d

    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    .line 24
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 26
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 28
    :cond_e
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_3

    .line 29
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 30
    :cond_10
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/i3;->C0(Ljava/util/List;)V

    return-void
.end method

.method public static t0(S)[B
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, p0, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method A0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method public B(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->J0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method B0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget p1, p0, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5148\u542f\u52a8\u6e38\u620f\u4fdd\u5b58\u5b58\u6863"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5148\u4ece\u672c\u5730\u5907\u4efd\u5b58\u6863"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method C0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/i3;->n:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v3}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    new-instance v3, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/CloudListDataBean;-><init>()V

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setAddTime(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveCover(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveCoverFilePath(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFileName(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/join/mgps/fragment/i3;->f0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveName(Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setFileSize(J)V

    .line 14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setFileMd5(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 16
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->p:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 18
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x5

    .line 20
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 21
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 22
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    goto :goto_1

    .line 26
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    .line 27
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->B0(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 28
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 29
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/i3;->updateUi(Ljava/util/List;)V

    return-void
.end method

.method D0(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->q0:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/S"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/fragment/i3;->r0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->q0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/fragment/i3;->u0:J

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/fragment/i3;->w0:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/fragment/i3;->u0:J

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/fragment/i3;->w0:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public E(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    return-void
.end method

.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->C:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->C:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public H(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/i3;->I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    .line 3
    iget p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    :goto_0
    return-void
.end method

.method I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/i3;->m0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v8

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/join/android/app/common/http/h;->i([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/CLoudUploadMain;

    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getCode()I

    move-result v1

    const/16 v3, 0x258

    if-ne v1, v3, :cond_2

    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->G:Z

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p2, p1}, Lcom/join/mgps/listener/e;->H(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/i3;->m0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 12
    invoke-interface {p2, p1}, Lcom/join/mgps/listener/e;->B(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void

    :cond_2
    const-string v1, "701"

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->A0()V

    const-string v0, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-interface {p2, p1}, Lcom/join/mgps/listener/e;->H(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 18
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/fragment/i3;->m0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {p2, p1}, Lcom/join/mgps/listener/e;->H(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 20
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/fragment/i3;->m0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 21
    :goto_1
    invoke-interface {p2, p1}, Lcom/join/mgps/listener/e;->H(Lcom/join/mgps/dto/CloudListDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method J0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->p0:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/i3;->I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    .line 3
    iget p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/fragment/i3;->r0:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    const v3, 0x7f080169

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v2, v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v4

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v4

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u9009\u62e9"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u5b58\u6863"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.mgps.activity.quitManage"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method M()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/MApplication;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/MApplication;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/i3$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$o;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.mgps.activity.quitManage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public W([B)S
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    const/4 v1, 0x1

    .line 2
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    shl-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method Z(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gameId"

    .line 4
    iget-object v3, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "archiveName"

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->r:Lcom/join/mgps/rpc/c;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->F0()V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    const-string p1, "701"

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->A0()V

    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/i3;->H:Lcom/join/mgps/dialog/x0;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->k()Lcom/join/mgps/rpc/impl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->r:Lcom/join/mgps/rpc/c;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/i3;->t:I

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->v:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->w:Landroid/content/IntentFilter;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->v:Landroid/content/IntentFilter;

    const-string v1, "com.join.mgps.activity.joinManage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->w:Landroid/content/IntentFilter;

    const-string v1, "com.join.mgps.activity.quitManage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/i3$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$v;-><init>(Lcom/join/mgps/fragment/i3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->x:Lcom/join/mgps/fragment/i3$v;

    .line 15
    new-instance v0, Lcom/join/mgps/fragment/i3$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$w;-><init>(Lcom/join/mgps/fragment/i3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->y:Lcom/join/mgps/fragment/i3$w;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->x:Lcom/join/mgps/fragment/i3$v;

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->v:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->y:Lcom/join/mgps/fragment/i3$w;

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->w:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.wufun.cloud.showUploadDialog"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/join/mgps/fragment/i3$y;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$y;-><init>(Lcom/join/mgps/fragment/i3;)V

    iput-object v1, p0, Lcom/join/mgps/fragment/i3;->z:Lcom/join/mgps/fragment/i3$y;

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->p:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/i3$u;-><init>(Lcom/join/mgps/fragment/i3;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    new-instance v0, Lcom/join/mgps/dialog/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$m;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$k;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->E:Lcom/join/mgps/dialog/x0;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->d:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/fragment/i3$n;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$n;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->M()V

    return-void
.end method

.method public d0(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->e0()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->n0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->M()V

    return-void
.end method

.method i0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method j0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5148\u4ece\u672c\u5730\u5907\u4efd\u5b58\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5148\u542f\u52a8\u6e38\u620f\u4fdd\u5b58\u5b58\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method k0()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->J:Z

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->J:Z

    .line 3
    iget v4, p0, Lcom/join/mgps/fragment/i3;->t:I

    const v5, 0x7f08016a

    const-string v6, "\u4e2a\u5b58\u6863"

    const-string v7, "\u5df2\u9009\u62e9"

    if-ne v4, v1, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v8, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 5
    iget-object v8, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 6
    iget-object v8, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v8, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne v4, v1, :cond_4

    if-eqz v4, :cond_4

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 14
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    iget-object v4, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 16
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 18
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_a

    if-eqz v2, :cond_a

    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 21
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 22
    :cond_b
    iput-boolean v3, p0, Lcom/join/mgps/fragment/i3;->J:Z

    .line 23
    iget v0, p0, Lcom/join/mgps/fragment/i3;->t:I

    const-string v4, "\u5df2\u9009\u62e90\u4e2a\u5b58\u6863"

    const v5, 0x7f080169

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 24
    :goto_4
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 26
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 27
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    .line 29
    :goto_5
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    if-eqz v1, :cond_f

    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 32
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method l0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->H0(Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5907\u4efd\u987b\u77e5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u4e0a\u4f20\u540e\uff0c\u5c06\u4ee5\u672c\u5730\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u4e91\u7aef\u540c\u540d\u5b58\u6863\u3002"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$r;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/i3$r;-><init>(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$q;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$p;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public m(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->o0:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5df2\u6709\u5907\u4efd\u8fdb\u884c\u4e2d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    new-instance v1, Lcom/join/mgps/fragment/i3$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$b;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/join/mgps/fragment/i3;->q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/i3;->C:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->x:Lcom/join/mgps/fragment/i3$v;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->z:Lcom/join/mgps/fragment/i3$y;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->u:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->x:Lcom/join/mgps/fragment/i3$v;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->a()Lcom/join/mgps/dto/CloudListDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->e()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/event/e;->e()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->a()Lcom/join/mgps/dto/CloudListDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/join/mgps/fragment/i3;->t:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->d0(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->M()V

    return-void
.end method

.method public onRequestProgress(JJZLjava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/i3;->G:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/fragment/i3;->m0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "K"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/join/mgps/fragment/i3;->x0:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/join/mgps/fragment/i3;->v0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p6, v2, v4

    if-lez p6, :cond_3

    .line 8
    iget-wide v6, p0, Lcom/join/mgps/fragment/i3;->t0:J

    sub-long v6, p1, v6

    mul-long v6, v6, v4

    div-long/2addr v6, v2

    iput-wide v6, p0, Lcom/join/mgps/fragment/i3;->u0:J

    .line 9
    iput-wide v0, p0, Lcom/join/mgps/fragment/i3;->v0:J

    .line 10
    iput-wide p1, p0, Lcom/join/mgps/fragment/i3;->t0:J

    .line 11
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/fragment/i3;->s0:J

    .line 12
    iget-object p6, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    if-eqz p6, :cond_4

    invoke-virtual {p6}, Landroid/app/Dialog;->isShowing()Z

    move-result p6

    if-eqz p6, :cond_4

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 13
    div-long/2addr p1, p3

    long-to-int p2, p1

    iput p2, p0, Lcom/join/mgps/fragment/i3;->w0:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->x0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->D0(Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_5

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/join/mgps/fragment/i3;->t0:J

    .line 16
    iput-wide p1, p0, Lcom/join/mgps/fragment/i3;->s0:J

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->d0(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->d:Landroid/widget/Button;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->d:Landroid/widget/Button;

    const-string v1, "\u5907\u4efd"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v0, p0, Lcom/join/mgps/fragment/i3;->t:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i3;->d0(I)V

    :goto_0
    return-void
.end method

.method public p(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method p0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/i3$x;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x6

    new-array v3, v0, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x57

    const/16 v5, 0x46

    const/16 v6, 0x53

    const/16 v7, 0x54

    const/16 v8, 0x45

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 12
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    new-array v0, v0, [B

    .line 13
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 14
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    new-array v5, v0, [B

    .line 15
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 16
    invoke-virtual {p0, v5}, Lcom/join/mgps/fragment/i3;->W([B)S

    move-result v6

    .line 17
    new-array v7, v6, [B

    .line 18
    invoke-virtual {v2, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 19
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v0, v6

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/v0;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x20

    .line 24
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/RecoverFileJson;

    invoke-virtual {v0, v8, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecoverFileJson;

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecoverFileJson;->getUserID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/i3;->K0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/i3$x;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecoverFileJson;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p3, v1, p1}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 31
    invoke-interface {p3, v1, p1}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u8bf7\u52ff\u5206\u4eab\u4ed6\u4eba\u539f\u521b\u5b58\u6863"

    .line 32
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\u5b58\u6863\u4e0d\u5408\u6cd5"

    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/i3;->K0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/i3$x;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "\u5199\u5165\u4fe1\u606f\u5f02\u5e38"

    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, "\u6587\u4ef6\u6ca1\u627e\u5230"

    .line 37
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u5199\u5165\u4fe1\u606f\u5f02\u5e382"

    .line 40
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;Z",
            "Lcom/join/mgps/fragment/i3$x;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/fragment/i3;->p0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/i3$x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3
    :catch_0
    invoke-interface {p3, v3, v1}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_1

    .line 4
    :cond_1
    iput v3, p0, Lcom/join/mgps/fragment/i3;->n0:I

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 7
    new-instance v4, Lcom/join/mgps/fragment/i3$f;

    invoke-direct {v4, p0, p3}, Lcom/join/mgps/fragment/i3$f;-><init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/fragment/i3$x;)V

    invoke-virtual {p0, v0, p2, v4}, Lcom/join/mgps/fragment/i3;->p0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/i3$x;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget p2, p0, Lcom/join/mgps/fragment/i3;->n0:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 9
    invoke-interface {p3, v2, v1}, Lcom/join/mgps/fragment/i3$x;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    :cond_3
    :goto_1
    return-void
.end method

.method r0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V
    .locals 17
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "\u5206\u4eab\u5931\u8d25"

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/i3;->w0(Z)V

    .line 2
    iget v4, v1, Lcom/join/mgps/fragment/i3;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-ne v4, v0, :cond_0

    .line 3
    :try_start_1
    filled-new-array {v5, v5}, [Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v8, v4

    .line 6
    :goto_0
    new-instance v14, Lcom/join/mgps/fragment/i3$l;

    invoke-direct {v14, v1}, Lcom/join/mgps/fragment/i3$l;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v13

    iget v0, v1, Lcom/join/mgps/fragment/i3;->t:I

    move-object/from16 v15, p2

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v16}, Lcom/join/android/app/common/http/h;->d([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v5, Lcom/join/mgps/dto/CLoudUploadMain;

    invoke-virtual {v4, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getCode()I

    move-result v4

    const/16 v5, 0x258

    if-ne v4, v5, :cond_2

    .line 12
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/i3;->w0(Z)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getData_info()Lcom/join/mgps/dto/CloudUploadDatainfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudUploadDatainfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v4, "701"

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/i3;->A0()V

    const-string v0, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 16
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    .line 19
    :goto_1
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/i3;->w0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/i3;->w0(Z)V

    :goto_2
    return-void
.end method

.method public s(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/i3;->a0(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u4e0b\u8f7d\u987b\u77e5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u540e\uff0c\u5c06\u4ee5\u5907\u4efd\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u672c\u5730\u540c\u540d\u5b58\u6863"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/fragment/i3$a;-><init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;Z)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/fragment/i3$t;

    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/i3$t;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/fragment/i3$s;

    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/i3$s;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public t(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->Z(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 2
    iget-object p2, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file://"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->X(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v3, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/emus/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 19
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 21
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 22
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/i3;->X(Ljava/lang/String;)V

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/RomArchived;

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->E0()V

    :cond_5
    :goto_0
    return-void
.end method

.method u0(Z)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->i0()V

    .line 7
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/i3;->C:Z

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method v0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method w0(Z)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->E:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->E:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public x0(Ljava/lang/String;)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v1, p0, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i3;->y0(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    new-instance v1, Lcom/join/mgps/fragment/i3$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i3$i;-><init>(Lcom/join/mgps/fragment/i3;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/join/mgps/fragment/i3;->q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method y0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6b64\u7248\u672c\u5b58\u6863\u4e0d\u80fd\u5206\u4eab"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u94dc\u677f\u4f59\u989d\u4e0d\u8db3"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Lcom/join/mgps/dialog/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/a0;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u5e03\u9700\u8981\u5148\u6263\u9664\u60a8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f\u4fdd\u8bc1\u91d1\uff0c\u4ed6\u4eba\u4e0b\u8f7d\u6240\u652f\u4ed8\u94dc\u677f\u5c06\u5b8c\u5168\u5f52\u4f60\u6240\u6709\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->c(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$h;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/i3$h;-><init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->f(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$g;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/a0;->b(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u94dc\u677f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/a0;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method z0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i3;->G0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5907\u4efd\u987b\u77e5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u4e0a\u4f20\u540e\uff0c\u5c06\u4ee5\u672c\u5730\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u4e91\u7aef\u540c\u540d\u5b58\u6863\u3002"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$e;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/i3$e;-><init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$d;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$c;-><init>(Lcom/join/mgps/fragment/i3;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->h(Z)Lcom/join/mgps/dialog/w;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
