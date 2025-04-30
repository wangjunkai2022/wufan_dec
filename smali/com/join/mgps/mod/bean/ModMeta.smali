.class public Lcom/join/mgps/mod/bean/ModMeta;
.super Ljava/lang/Object;
.source "ModMeta.java"


# static fields
.field public static final MOD_TYPE_MOD:I = 0x0

.field public static final MOD_TYPE_VA:I = 0x1


# instance fields
.field private archiveCloudSwitch:Ljava/lang/String;

.field private channelNum:Ljava/lang/String;

.field private classLoader:Ldalvik/system/DexClassLoader;

.field private entryClass:Ljava/lang/String;

.field private entryDataClass:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private goldFingerSwitch:Ljava/lang/String;

.field private hostApp:Landroid/app/Application;

.field private hostPackage:Ljava/lang/String;

.field private introductionSwitch:Ljava/lang/String;

.field private modCode:I

.field private modPath:Ljava/lang/String;

.field private modType:I

.field private modVersion:Ljava/lang/String;

.field private nativeLibDir:Ljava/lang/String;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageName:Ljava/lang/String;

.field private pluginLibDir:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;

.field private targetApp:Landroid/app/Application;

.field private target_version:I

.field private useNativeLibDir:Z

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    return-void
.end method

.method public getArchiveCloudSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->archiveCloudSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoader()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryDataClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoldFingerSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->goldFingerSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getHostApp()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    return-object v0
.end method

.method public getHostPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroductionSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->introductionSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getModCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    return v0
.end method

.method public getModPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    return-object v0
.end method

.method public getModType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    return v0
.end method

.method public getModVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginLibDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTargetApp()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    return-object v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->target_version:I

    return v0
.end method

.method public getUseNativeLibDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    return v0
.end method

.method public isUseNativeLibDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    return v0
.end method

.method public setArchiveCloudSwitch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->archiveCloudSwitch:Ljava/lang/String;

    return-void
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public setClassLoader(Ldalvik/system/DexClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method public setEntryClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    return-void
.end method

.method public setEntryDataClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGoldFingerSwitch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->goldFingerSwitch:Ljava/lang/String;

    return-void
.end method

.method public setHostApp(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    return-void
.end method

.method public setHostPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    return-void
.end method

.method public setIntroductionSwitch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->introductionSwitch:Ljava/lang/String;

    return-void
.end method

.method public setModCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    return-void
.end method

.method public setModInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    .line 5
    iput-object p5, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    return-void
.end method

.method public setModPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    return-void
.end method

.method public setModType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    return-void
.end method

.method public setModVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    return-void
.end method

.method public setNativeLibDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPluginLibDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public setTargetApp(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    return-void
.end method

.method public setTarget_version(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->target_version:I

    return-void
.end method

.method public setUseNativeLibDir(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModMeta{hostApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", processName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nativeLibDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", classLoader="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resources="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", packageInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", entryClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", entryDataClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pluginLibDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gameId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", useNativeLibDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hostPackage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", modType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
