.class public final Lcom/alipay/security/mobile/module/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/a/c/a;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/a/c/a;

.field private static b:Lcom/alipay/security/mobile/module/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/a/c/b;->a:Lcom/alipay/security/mobile/module/a/c/a;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/b;->b(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;

    move-result-object p0

    sput-object p0, Lcom/alipay/security/mobile/module/a/c/b;->b:Lcom/alipay/security/mobile/module/a/a;

    new-instance p0, Lcom/alipay/security/mobile/module/a/c/b;

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/a/c/b;-><init>()V

    sput-object p0, Lcom/alipay/security/mobile/module/a/c/b;->a:Lcom/alipay/security/mobile/module/a/c/a;

    :cond_1
    sget-object p0, Lcom/alipay/security/mobile/module/a/c/b;->a:Lcom/alipay/security/mobile/module/a/c/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/a;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/a/c/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lo/a;

    iget-object p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->d:Ljava/lang/String;

    iget-object p4, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->c:Ljava/lang/String;

    invoke-direct {p2, p3, p4}, Lo/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->a:Z

    iput-boolean p3, p2, Lo/b;->a:Z

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->b:Ljava/lang/String;

    iput-object p1, p2, Lo/b;->b:Ljava/lang/String;

    return-object p2
.end method

.method public final a(Lo/d;)Lo/c;
    .locals 2

    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    iget-object v1, p1, Lo/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->b:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->e:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->f:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->g:Ljava/lang/String;

    iget-object v1, p1, Lo/d;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->h:Ljava/lang/String;

    iget-object p1, p1, Lo/d;->i:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->i:Ljava/util/Map;

    sget-object p1, Lcom/alipay/security/mobile/module/a/c/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {p1, v0}, Lcom/alipay/security/mobile/module/a/a;->a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object p1

    new-instance v0, Lo/c;

    invoke-direct {v0}, Lo/c;-><init>()V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-boolean v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->a:Z

    iput-boolean v1, v0, Lo/b;->a:Z

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lo/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->c:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->d:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->e:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->f:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->g:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->h:Ljava/lang/String;

    iput-object v1, v0, Lo/c;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->i:Ljava/lang/String;

    iput-object p1, v0, Lo/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/a/c/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
