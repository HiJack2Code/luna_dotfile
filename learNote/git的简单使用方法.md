# Git 极简入门复习（最常用、必背命令）
我给你整理**最实用、最常用、博客/项目必用**的 Git 命令，不用记复杂的，背会这些足够日常使用👇

---

## 一、初始化仓库（第一次用）
```bash
# 初始化一个 Git 仓库
git init
```

```bash
# 关联远程仓库（比如 GitHub/Gitee）
git remote add origin 你的仓库地址
```

---

## 二、日常最常用 4 步（必背）
这是你**每天都会用**的核心流程：
```bash
# 1. 查看文件改动
git status

# 2. 添加所有改动到暂存区
git add .

# 3. 提交到本地仓库（写清楚改了什么）
git commit -m "这里写提交说明"

# 4. 推送到远程仓库（GitHub/Gitee）
git push
```

---

## 三、下载别人的代码 / 拉取更新
```bash
# 克隆（下载）一个完整仓库
git clone 仓库地址

# 拉取远程最新代码（更新本地）
git pull
```

---

## 四、分支常用命令（开发必用）
```bash
# 查看所有分支
git branch

# 创建新分支
git branch 分支名

# 切换分支
git checkout 分支名
# 或新版命令
git switch 分支名

# 创建并直接切换到新分支
git checkout -b 分支名

# 合并分支（比如把 dev 合并到 main）
git merge 分支名
```

---

## 五、查看提交记录
```bash
# 查看提交日志
git log

# 简洁版日志（推荐）
git log --oneline
```

---

## 六、最常用场景总结（一句话版）
1. **第一次上传代码**
`git init` → `git add .` → `git commit -m "init"` → `git push`

2. **改完代码要保存**
`git add .` → `git commit -m "改了xx"` → `git push`

3. **要更新代码**
`git pull`

4. **要开新功能开发**
`git checkout -b 新分支`

---

### 总结
你只需要牢牢记住：
- **git add .**
- **git commit -m "说明"**
- **git push**
- **git pull**

这 4 条就是 Git 90% 的用法！

