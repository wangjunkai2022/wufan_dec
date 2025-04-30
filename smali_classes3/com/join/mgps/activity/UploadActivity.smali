.class public Lcom/join/mgps/activity/UploadActivity;
.super Lcom/BaseActivity;
.source "UploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UploadActivity$c;,
        Lcom/join/mgps/activity/UploadActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05ce
.end annotation


# static fields
.field private static final G:Ljava/lang/String;

.field private static final H:Ljava/lang/String;

.field static I:Lcom/join/mgps/pref/PrefDef_; = null
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field public static final J:I = 0x0

.field public static final K:I = 0x1

.field public static final n0:I = -0x1

.field public static final o0:Ljava/lang/String; = "upload"

.field public static final p0:Ljava/lang/String; = "upload_result"


# instance fields
.field A:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field F:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private a:Ljava/io/File;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UploadDialogBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UploadDialogBean;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/join/mgps/dto/UploadDialogBean;

.field e:Lcom/join/mgps/dto/UploadDialogBean;

.field f:Lcom/join/mgps/activity/UploadActivity$c;

.field g:Lcom/join/mgps/activity/UploadActivity$b;

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Ljava/io/File;

.field k:Ljava/io/File;

.field l:Ljava/io/File;

.field m:Ljava/io/File;

.field n:Ljava/io/File;

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Ljava/io/File;

.field u:Ljava/io/File;

.field v:Lcom/papa/sim/statistic/UpLoadGameConfig;

.field w:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field z:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/wufan91/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/UploadActivity;->G:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/wufan91/upload/img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/UploadActivity;->H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method private F0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u6e38\u620f\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->d:Lcom/join/mgps/dto/UploadDialogBean;

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u6e38\u620f\u5206\u7c7b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->e:Lcom/join/mgps/dto/UploadDialogBean;

    if-nez v0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u5e73\u53f0\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->j:Ljava/io/File;

    if-nez v0, :cond_3

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u8bf7\u9009\u62e9\u6e38\u620f"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    if-nez v0, :cond_4

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u8bf7\u9009\u62e9\u56fe\u6807"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    if-nez v0, :cond_5

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u8bf7\u9009\u62e9\u622a\u56fe"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u6e38\u620f\u8bf4\u660e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private H0(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 3
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {p1, p2, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private I0(Ljava/io/File;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/mgps/activity/UploadActivity;->I0(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private M0()Ljava/lang/String;
    .locals 6

    const-string v0, ".zip"

    const-string v1, "-"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "&"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wufan91/upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Q0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u8857\u673a"

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x1f

    .line 5
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "gba"

    .line 9
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x21

    .line 10
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "psp"

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x22

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "fc"

    .line 19
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x23

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "nds"

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "sfc"

    .line 29
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x2b

    .line 30
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "android"

    .line 34
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x2e

    .line 35
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v1, "md"

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v1, 0x33

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private R0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u683c\u6597\u6e38\u620f"

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 5
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u7b56\u7565\u6e38\u620f"

    .line 9
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 10
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u89d2\u8272\u626e\u6f14"

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u7ade\u901f\u6e38\u620f"

    .line 19
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x15

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u4f53\u80b2\u6e38\u620f"

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x16

    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u4f11\u95f2\u76ca\u667a"

    .line 29
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x17

    .line 30
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v2, "\u52a8\u4f5c\u6e38\u620f"

    .line 34
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v2, 0x18

    .line 35
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    const-string v1, "\u5c04\u51fb\u98de\u884c"

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    const/16 v1, 0x19

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private S0(Ljava/io/File;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 2
    new-instance p1, Ljava/math/BigDecimal;

    const/high16 v1, 0x100000

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private T0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "jpg"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private V0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->H:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/UploadActivity;->I0(Ljava/io/File;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    const-string v1, "jpg"

    const-string v2, "png"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/icon.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/icon.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/img_1.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/img_1.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/img_2.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/img_2.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    .line 20
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/img_3.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_3

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/img_3.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->H0(Ljava/io/File;Ljava/io/File;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->R0()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->Q0()V

    .line 3
    new-instance v0, Lcom/join/mgps/activity/UploadActivity$c;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/UploadActivity$c;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->f:Lcom/join/mgps/activity/UploadActivity$c;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$c;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->f:Lcom/join/mgps/activity/UploadActivity$c;

    const-string v1, "\u9009\u62e9\u6e38\u620f\u5206\u7c7b"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$c;->b(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/join/mgps/activity/UploadActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/UploadActivity$b;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->g:Lcom/join/mgps/activity/UploadActivity$b;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$b;->a(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->g:Lcom/join/mgps/activity/UploadActivity$b;

    const-string v1, "\u9009\u62e9\u6e38\u620f\u5e73\u53f0"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$b;->b(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/papa/sim/statistic/UpLoadGameConfig;

    invoke-direct {v0}, Lcom/papa/sim/statistic/UpLoadGameConfig;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 10
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 11
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 15
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/SDCardFileExplorerActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method K0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->N0()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->f:Lcom/join/mgps/activity/UploadActivity$c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public N0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MAX_PICK_SIZE"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public O0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MAX_PICK_SIZE"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x12c

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method P0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->O0()V

    return-void
.end method

.method U0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->g:Lcom/join/mgps/activity/UploadActivity$b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method W0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method X0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "&"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/papa/sim/statistic/UpLoadGameConfig;

    invoke-direct {v3}, Lcom/papa/sim/statistic/UpLoadGameConfig;-><init>()V

    .line 6
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setUid(I)V

    const/4 v4, 0x1

    .line 7
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setToken(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 8
    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_name(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 9
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_type(I)V

    const/4 v5, 0x4

    .line 10
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_platform_type(I)V

    const/4 v5, 0x5

    .line 11
    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_explain(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p0, v3, v1}, Lcom/join/mgps/activity/UploadActivity;->a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    const-string v2, "\u5f00\u59cb\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method Y0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0a\u4f20\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method Z0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->u:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/http/h;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "upload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_result"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/UploadActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/UploadActivity$a;-><init>(Lcom/join/mgps/activity/UploadActivity;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/android/app/common/http/h;->g(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->F:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e38\u620f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5df2\u4e0a\u4f20\u6210\u529f\uff0c\u611f\u8c22\u5206\u4eab"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "\u4f60\u7684\u6e38\u620f "

    if-ne v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->D:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u6b63\u5728\u4e0a\u4f20\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 12
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0a\u4f20\u5df2\u4e2d\u6b62"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    :cond_4
    :goto_0
    return-void
.end method

.method b1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0a\u4f20"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c1(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "upload_result"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "upload"
        }
        registerAt = .enum Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnResumeOnPause:Lorg/androidannotations/annotations/Receiver$RegisterAt;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->g1()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->f1()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->f1()V

    :cond_2
    :goto_0
    return-void
.end method

.method d1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->h1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->b1()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method e1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "12449"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method f1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u7684\u6e38\u620f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0a\u4f20\u5df2\u7ec8\u6b62"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    :goto_0
    return-void
.end method

.method g1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e38\u620f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5df2\u4e0a\u4f20\u6210\u529f\uff0c\u611f\u8c22\u5206\u4eab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method h1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setUid(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setToken(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_name(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->d:Lcom/join/mgps/dto/UploadDialogBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadDialogBean;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_type(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->e:Lcom/join/mgps/dto/UploadDialogBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadDialogBean;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_platform_type(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_explain(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->V0()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->M0()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->u:Ljava/io/File;

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->u:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->j:Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->t:Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 17
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->u:Ljava/io/File;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/s2;->m(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->v:Lcom/papa/sim/statistic/UpLoadGameConfig;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->u:Ljava/io/File;

    invoke-virtual {p0, p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    goto :goto_0

    .line 24
    :catch_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    const-string p1, "srcFile"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->j:Ljava/io/File;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/16 p2, 0xc8

    const-string v0, "key_selected_images"

    const-string v1, "\u8bf7\u9009\u62e9PNG\u6216JPG\u683c\u5f0f\u56fe\u7247"

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_b

    .line 4
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->k:Ljava/io/File;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x12c

    if-ne p1, p2, :cond_b

    if-eqz p3, :cond_b

    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const-string p3, "\u4e3a\u4e86\u4f60\u7684\u6d41\u91cf\uff0c\u4e0a\u4f20\u56fe\u7247\u4e0d\u80fd\u8d85\u8fc72M\u54e6"

    const/16 v0, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v3, :cond_5

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    .line 18
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    .line 19
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    .line 20
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 24
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    goto/16 :goto_0

    .line 25
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    .line 32
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    .line 33
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 40
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    .line 41
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    goto/16 :goto_0

    .line 42
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_b

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->T0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 45
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    .line 49
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    .line 50
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    .line 51
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->S0(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 52
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 59
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->l:Ljava/io/File;

    .line 60
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->m:Ljava/io/File;

    .line 61
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->n:Ljava/io/File;

    goto :goto_0

    .line 62
    :cond_a
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void
.end method
