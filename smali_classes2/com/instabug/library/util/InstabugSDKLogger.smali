.class public final Lcom/instabug/library/util/InstabugSDKLogger;
.super Ljava/lang/Object;
.source "InstabugSDKLogger.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IB-"

.field private static instabugSDKDiskLogger:Ld0/l/e/q0/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logMessage length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " divided to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chunks"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v6, v5, 0xfa0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    mul-int/lit16 v3, v3, 0xfa0

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    mul-int/lit16 v3, v3, 0xfa0

    .line 8
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    :goto_2
    sget-object v1, Lcom/instabug/library/util/InstabugSDKLogger;->instabugSDKDiskLogger:Ld0/l/e/q0/d;

    if-eqz v1, :cond_5

    .line 12
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, p1

    .line 14
    invoke-virtual/range {v1 .. v6}, Ld0/l/e/q0/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 15
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logMessage length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " divided to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chunks"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v6, v5, 0xfa0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    mul-int/lit16 v3, v3, 0xfa0

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    mul-int/lit16 v3, v3, 0xfa0

    .line 8
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 12
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_1
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IB-InstabugSDKLogger"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static errorConsumer(Ljava/lang/String;)Ly0/b/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ly0/b/y/d<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/util/InstabugSDKLogger$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initLogger(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/util/InstabugSDKLogger;->instabugSDKDiskLogger:Ld0/l/e/q0/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ld0/l/e/q0/d;

    invoke-direct {v1, p0}, Ld0/l/e/q0/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/instabug/library/util/InstabugSDKLogger;->instabugSDKDiskLogger:Ld0/l/e/q0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static logEndSession(J)V
    .locals 0

    return-void
.end method

.method public static logSessionDetails(Ld0/l/e/t0/c;)V
    .locals 0

    return-void
.end method

.method public static logTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, "IB-"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 6
    :goto_0
    invoke-static {v1, p0}, Ld0/e/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logMessage length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " divided to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chunks"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v6, v5, 0xfa0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    mul-int/lit16 v3, v3, 0xfa0

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    mul-int/lit16 v3, v3, 0xfa0

    .line 8
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    :goto_2
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized wtf(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IB-InstabugSDKLogger"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized wtf(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-class v0, Lcom/instabug/library/util/InstabugSDKLogger;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isDebugEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/instabug/library/util/InstabugSDKLogger;->logTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IB-InstabugSDKLogger"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
