.class Lcn/sharesdk/framework/Platform$1$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/Platform$1;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:I

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcn/sharesdk/framework/Platform$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/Platform$1;Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/Platform$1$2;->d:Lcn/sharesdk/framework/Platform$1;

    iput-object p2, p0, Lcn/sharesdk/framework/Platform$1$2;->a:Lcn/sharesdk/framework/Platform;

    iput p3, p0, Lcn/sharesdk/framework/Platform$1$2;->b:I

    iput-object p4, p0, Lcn/sharesdk/framework/Platform$1$2;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform$1$2;->d:Lcn/sharesdk/framework/Platform$1;

    iget-object p1, p1, Lcn/sharesdk/framework/Platform$1;->a:Lcn/sharesdk/framework/Platform;

    iget-object p1, p1, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v0, p0, Lcn/sharesdk/framework/Platform$1$2;->a:Lcn/sharesdk/framework/Platform;

    iget v1, p0, Lcn/sharesdk/framework/Platform$1$2;->b:I

    iget-object v2, p0, Lcn/sharesdk/framework/Platform$1$2;->c:Ljava/util/HashMap;

    invoke-interface {p1, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    const/4 p1, 0x0

    return p1
.end method
