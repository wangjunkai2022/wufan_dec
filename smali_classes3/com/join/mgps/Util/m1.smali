.class public Lcom/join/mgps/Util/m1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/m1$a;
    }
.end annotation


# static fields
.field private static a:Lcom/join/mgps/Util/m1; = null

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final d:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final e:Ljava/lang/String; = "android.permission.CAMERA"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CAMERA"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()Lcom/join/mgps/Util/m1;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/m1;->a:Lcom/join/mgps/Util/m1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/m1;

    invoke-direct {v0}, Lcom/join/mgps/Util/m1;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/m1;->a:Lcom/join/mgps/Util/m1;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/m1;->a:Lcom/join/mgps/Util/m1;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/Util/m1$a;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/Util/m1;->d()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/m1;->b(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p4}, Lcom/join/mgps/Util/m1$a;->a()V

    :goto_0
    return-void
.end method

.method public f(Landroid/app/Activity;[Ljava/lang/String;[ILcom/join/mgps/Util/m1$a;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_2

    .line 5
    aget v4, p3, v3

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/Util/m1;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    aget-object v4, p2, v3

    invoke-virtual {p1, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    .line 8
    sget-object v5, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    aget-object v6, p2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_0

    .line 9
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 12
    invoke-interface {p4}, Lcom/join/mgps/Util/m1$a;->c()V

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 15
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    .line 16
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "\u5b58\u50a8\u6743\u9650"

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u8bbe\u5907\u4fe1\u606f"

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "["

    const-string v0, ""

    .line 22
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "]"

    .line 23
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ","

    const-string v0, "\u3001"

    .line 24
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f110034

    .line 25
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const/4 p1, 0x2

    const-string p2, "\""

    aput-object p2, p3, p1

    const-string p1, "\u6743\u9650\u4fe1\u606f"

    .line 26
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {p4, p1}, Lcom/join/mgps/Util/m1$a;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_7
    invoke-interface {p4}, Lcom/join/mgps/Util/m1$a;->a()V

    :goto_4
    return-void
.end method

.method public requestPermissions(Landroid/app/Activity;ILcom/join/mgps/Util/m1$a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/Util/m1;->a(Ljava/util/List;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/Util/m1;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    sget-object v0, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/m1;->b(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    sget-object p3, Lcom/join/mgps/Util/m1;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p3}, Lcom/join/mgps/Util/m1$a;->a()V

    :goto_0
    return-void
.end method
