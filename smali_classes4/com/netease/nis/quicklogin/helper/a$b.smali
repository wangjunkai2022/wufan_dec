.class Lcom/netease/nis/quicklogin/helper/a$b;
.super Ljava/lang/Object;
.source "AbstractLoginHelper.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nis/quicklogin/helper/a;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/a;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->d:Lcom/netease/nis/quicklogin/helper/a;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iput-object p4, p0, Lcom/netease/nis/quicklogin/helper/a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/g$b;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/a$b;->d:Lcom/netease/nis/quicklogin/helper/a;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/nis/quicklogin/helper/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/a$b;->d:Lcom/netease/nis/quicklogin/helper/a;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/nis/quicklogin/helper/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    return-void
.end method
