.class public Ln1/a0;
.super Lg1/b;
.source "JoystickManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/JoystickTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/a0;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/JoystickTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/a0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static o()Ln1/a0;
    .locals 1

    .line 1
    sget-object v0, Ln1/a0;->b:Ln1/a0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->I()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/a0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/a0;

    invoke-direct {v0}, Ln1/a0;-><init>()V

    sput-object v0, Ln1/a0;->b:Ln1/a0;

    .line 4
    :cond_0
    sget-object v0, Ln1/a0;->b:Ln1/a0;

    return-object v0
.end method


# virtual methods
.method public n(Ljava/lang/String;)Lcom/join/mgps/db/tables/JoystickTable;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ln1/a0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/JoystickTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method
