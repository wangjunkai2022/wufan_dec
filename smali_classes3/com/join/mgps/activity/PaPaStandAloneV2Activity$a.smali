.class Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PaPaStandAloneV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PaPaStandAloneV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;->a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->i:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;->a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->D0(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->i:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
