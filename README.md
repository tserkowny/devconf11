## Name:
```shell
'devconf11'
```

## Description:
Установка '**Luxms BI 11***' на хост [среды разработки](https://luxmsbi.ru/docs/guides/sysadm-guide/deploy-types#%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D1%8F-%D0%B4%D0%BB%D1%8F-%D1%81%D1%80%D0%B5%D0%B4-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8) посредством сценариев Ansible.

Дублирует пакет [luxmsbi-setup](https://gito.lux.com/devops/luxmsbi-setup) для _установки Luxms BI на 1 хост с помощью Ansible_.
Имеются следующие отличия :
1. выполняется [подключение сетевых репозиториев](https://luxmsbi.ru/docs/guides/sysadm-guide/repository#%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA-%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D1%8F%D0%BC-bi) (роль 'repo'):
```shell
 'luxms-bi' = 'Luxms BI Repository'
 'luxms-thirdparty' = 'Luxms BI 3rd-party packages'
```
2. выполняется [подключение локального репозитория](https://wiki.lux.com/ru/support/support-memo/memo-luxmsbi/memo-luxmsbi-install-from-local-repo) (роль 'repo_local'):
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

### Integrate with your tools

- [ ] [Set up project integrations](git@github.com:tserkowny/devconf11.git)

***
