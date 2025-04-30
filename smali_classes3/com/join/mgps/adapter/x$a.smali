.class public Lcom/join/mgps/adapter/x$a;
.super Ljava/lang/Object;
.source "FragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field b:Lcom/join/mgps/adapter/x$b;

.field public c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/x$a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/x$a;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/adapter/x$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/x$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x$a;->b:Lcom/join/mgps/adapter/x$b;

    return-void
.end method
