# Git Diary

Git으로 관리되는 Markdown 중심의 간단한 다이어리 작성 앱

## 사용법
just 명령어로 간단히 실행.

### 설치
1. git clone으로 repository 복사

### Remote repository
1. Github에서 일기를 관리할 repository를 private repository로 만들기
2. `just link <repository_url>`로 private repository 연결


### 일기 쓰기
1. `just new`로 일기 markdown 생성. yyyy-mm-dd.md 파일이 condtents 디렉토리에 생성됨
2. 자신이 사용하는 코드 에디터로 contents/yyyy-mm-dd.md를 열어 작성
3. `just publish`로 일기를 remote에 commit && push