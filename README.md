## Name:
```shell
'devconf11'
```

## Description:
Установка '**Luxms BI 11***' на хост [среды разработки](https://luxmsbi.ru/docs/guides/sysadm-guide/deploy-types#%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D1%8F-%D0%B4%D0%BB%D1%8F-%D1%81%D1%80%D0%B5%D0%B4-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8) посредством сценариев Ansible.

Дублирует пакет [luxmsbi-setup](https://gito.luxms.com/devops/luxmsbi-setup) для _установки Luxms BI на 1 хост с помощью Ansible_.
Имеются следующие отличия :
1. выполняется [подключение сетевых репозиториев](https://luxmsbi.ru/docs/guides/sysadm-guide/repository#%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA-%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D1%8F%D0%BC-bi) (роль 'repo'):
```shell
 'luxms-bi' = 'Luxms BI Repository'
 'luxms-thirdparty' = 'Luxms BI 3rd-party packages'
```
2. выполняется [подключение локального репозитория](https://wiki.spb.luxms.com/ru/support/support-memo/memo-luxmsbi/memo-luxmsbi-install-from-local-repo) (роль 'repo_local'):
```shell
 'luxms-bi-lrepo' = 'Luxms BI Repository'
 'luxms-bi-lrepo' = 'Luxms BI 3rd-party packages'
```
3. выполняется [обновление корневых сертификатов](https://luxmsbi.ru/docs/guides/sysadm-guide/repository#%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D1%80%D0%BD%D0%B5%D0%B2%D1%8B%D1%85-%D1%81%D0%B5%D1%80%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%82%D0%BE%D0%B2);
4. выполняется регистрация публичного PGP-ключа для [проверки цифровой подписи пакетов при установке](https://luxmsbi.ru/docs/guides/sysadm-guide/repository#%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BE%D0%B2).

## Roadmap:
- [ ] [_Поддерживаемые операционные системы_](https://luxmsbi.ru/docs/overviews/general-overview/tech-info#%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5-%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B)
и [_пакетные репозитории_](https://luxmsbi.ru/docs/guides/sysadm-guide/planning#%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BD%D1%8B%D0%B5-%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D0%B8) согласно документации:
```shell
 'Astra Linux 1.7.8.6'
 'Astra Linux 1.8.4.48'
 'RED OS release MUROM (7.3.6) MINIMAL'
 'RED OS release (8.0.2) MINIMAL'
 'Rocky Linux release 9.6 (Blue Onyx)'
```
- [ ] [_Поддерживаемые версии СУБД_](https://luxmsbi.ru/docs/overviews/general-overview/tech-info#%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5-%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D0%B8-postgresql)
и [_выделенные серверы Базы данных_](https://luxmsbi.ru/docs/guides/sysadm-guide/planning#%D0%B2%D1%8B%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0-%D0%B1%D0%B0%D0%B7%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85) согласно документации:
```shell
 'PostgreSQL 13.16'
 'PostgreSQL 15.15'
 'PostgreSQL 17.9'
```
- [ ] [_Матрица совместимости_](https://luxmsbi.ru/docs/overviews/general-overview/tech-info#%D0%BC%D0%B0%D1%82%D1%80%D0%B8%D1%86%D0%B0-%D1%81%D0%BE%D0%B2%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%B0-luxmsbi-pg) согласно документации:
```shell
| ОС                                    | СУБД               | nginx    | luxmsbi-web        | luxmsbi-pg             |
|---------------------------------------|--------------------|----------|--------------------|------------------------|
| 'Astra Linux 1.7.8.6'                 | 'PostgreSQL 13.16' | '1.22.1' | '11.1.28-20250909' |                        |
| 'Astra Linux 1.8.4.48'                | 'PostgreSQL 15.14' | '1.26.3' | '11.2.1-20251120'  | 'pg15-11.2.0-20251105' |
| 'RED OS release (7.3.6) MINIMAL'      | 'PostgreSQL 15.14' | '1.28.0' | '11.2.3-20251217'  | 'pg15-11.2.2-20251204' |
| 'RED OS release (8.0.2) MINIMAL'      | 'PostgreSQL 15.14' | '1.28.0' | '11.2.3-20251217'  | 'pg15-11.2.2-20251204' |
| 'RED OS release (8.0.2) MINIMAL'      | 'PostgreSQL 17.6'  | '1.28.0' | '11.2.3-20251217'  | 'pg17-11.2.2-20251204' |
| 'Rocky Linux release 9.6 (Blue Onyx)' | 'PostgreSQL 15.15' | '1.24.0' | '11.2.3-20251217'  | 'pg15-11.2.2-20251204' |
| 'Rocky Linux release 9.6 (Blue Onyx)' | 'PostgreSQL 17.9'  | '1.24.0' | '11.2.8-20260303'  | 'pg17-11.2.5-20260313' |
```

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/topics/git/add_files/#add-files-to-a-git-repository) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin git@github.com:tserkowny/devconf11.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gito.luxms.com/vgoryachkin/l11-devconf-setup/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Set auto-merge](https://docs.gitlab.com/user/project/merge_requests/auto_merge/)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing (SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thanks to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README

Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
