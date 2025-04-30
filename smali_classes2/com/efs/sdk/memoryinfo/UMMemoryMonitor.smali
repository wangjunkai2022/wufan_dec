.class public Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final F:Lcom/efs/sdk/memoryinfo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/efs/sdk/memoryinfo/d;

    invoke-direct {v0}, Lcom/efs/sdk/memoryinfo/d;-><init>()V

    sput-object v0, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->F:Lcom/efs/sdk/memoryinfo/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;
    .locals 1

    .line 1
    sget-object v0, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->F:Lcom/efs/sdk/memoryinfo/d;

    return-object v0
.end method
