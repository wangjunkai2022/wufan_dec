.class Lcn/sharesdk/framework/a/d$2;
.super Ljava/lang/Thread;
.source "StatisticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/a/b/c;

.field final synthetic b:Lcn/sharesdk/framework/a/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/a/d;Lcn/sharesdk/framework/a/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/a/d$2;->b:Lcn/sharesdk/framework/a/d;

    iput-object p2, p0, Lcn/sharesdk/framework/a/d$2;->a:Lcn/sharesdk/framework/a/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/d$2;->b:Lcn/sharesdk/framework/a/d;

    iget-object v1, p0, Lcn/sharesdk/framework/a/d$2;->a:Lcn/sharesdk/framework/a/b/c;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/d;->b(Lcn/sharesdk/framework/a/b/c;)V

    return-void
.end method
