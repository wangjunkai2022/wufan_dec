.class public Lcom/join/mgps/adapter/k6;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TabAdapter.java"


# static fields
.field public static b:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:[Ljava/lang/String;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\u6700\u65b0"

    const-string v1, "\u5927\u578b"

    const-string v2, "\u7834\u89e3"

    const-string v3, "\u4e2d\u6587"

    const-string v4, "\u5382\u5546"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/adapter/k6;->b:[Ljava/lang/String;

    const-string v0, "\u9996\u53d1"

    const-string v1, "\u5df2\u5f00\u6d4b"

    const-string v2, "\u672a\u5f00\u6d4b"

    const-string v3, "\u793c\u5305"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/adapter/k6;->c:[Ljava/lang/String;

    const-string v1, "\u63a8\u8350"

    const-string v2, "\u4e2d\u6587"

    const-string v3, "\u7834\u89e3"

    const-string v4, "\u7f8e\u56fd\u699c"

    const-string v5, "\u65e5\u672c\u699c"

    const-string v6, "\u97e9\u56fd\u699c"

    .line 3
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/adapter/k6;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput p2, p0, Lcom/join/mgps/adapter/k6;->a:I

    .line 3
    sget-object p1, Lcom/MApplication;->s:Ljava/lang/String;

    const-string p2, "2308"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/MApplication;->s:Ljava/lang/String;

    const-string p2, "750"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/MApplication;->s:Ljava/lang/String;

    const-string p2, "753"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "\u6700\u65b0"

    const-string p2, "\u5927\u578b"

    const-string v0, "\u7ecf\u5178"

    const-string v1, "\u4e2d\u6587"

    const-string v2, "\u5382\u5546"

    .line 4
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/adapter/k6;->b:[Ljava/lang/String;

    const-string v0, "\u63a8\u8350"

    const-string v1, "\u4e2d\u6587"

    const-string v2, "\u7ecf\u5178"

    const-string v3, "\u7f8e\u56fd\u699c"

    const-string v4, "\u65e5\u672c\u699c"

    const-string v5, "\u97e9\u56fd\u699c"

    .line 5
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/adapter/k6;->d:[Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/k6;->a:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/adapter/k6;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/join/mgps/adapter/k6;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0

    .line 4
    :cond_1
    sget-object v0, Lcom/join/mgps/adapter/k6;->d:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/k6;->a:I

    const-string v1, "intentTo"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/fragment/w2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/w2;-><init>()V

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lcom/join/mgps/fragment/u2;

    invoke-direct {v0}, Lcom/join/mgps/fragment/u2;-><init>()V

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    if-ne v0, v5, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    new-instance p1, Lcom/join/mgps/fragment/q2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/q2;-><init>()V

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lcom/join/mgps/fragment/s2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/s2;-><init>()V

    return-object p1

    .line 9
    :cond_5
    new-instance p1, Lcom/join/mgps/fragment/u2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/u2;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    .line 13
    :cond_6
    new-instance p1, Lcom/join/mgps/fragment/o2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/o2;-><init>()V

    return-object p1

    :cond_7
    if-ne v0, v4, :cond_10

    const-string v0, "type"

    if-eqz p1, :cond_c

    if-eq p1, v5, :cond_c

    if-ne p1, v4, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    new-instance v1, Lcom/join/mgps/fragment/x3;

    invoke-direct {v1}, Lcom/join/mgps/fragment/x3;-><init>()V

    .line 15
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_9

    goto :goto_0

    .line 16
    :cond_9
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 17
    :cond_a
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 18
    :cond_b
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    :goto_0
    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    .line 20
    :cond_c
    :goto_1
    new-instance v1, Lcom/join/mgps/fragment/t3;

    invoke-direct {v1}, Lcom/join/mgps/fragment/t3;-><init>()V

    .line 21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_f

    if-eq p1, v5, :cond_e

    if-eq p1, v4, :cond_d

    goto :goto_2

    :cond_d
    const/16 p1, 0xd

    .line 22
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_e
    const/16 p1, 0xc

    .line 23
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_f
    const/16 p1, 0xb

    .line 24
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    :cond_10
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/k6;->a:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/adapter/k6;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/join/mgps/adapter/k6;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 4
    :cond_1
    sget-object v0, Lcom/join/mgps/adapter/k6;->d:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
