FROM python:3.12
RUN pip install pipx
RUN pipx install uv
ENV PATH="/root/.local/bin:${PATH}"
COPY requirements-lock.txt /benchmark/
RUN uv pip install --system --requirement /benchmark/requirements-lock.txt
COPY Snakefile /benchmark/
COPY output_index/ /benchmark/output_index/
WORKDIR /benchmark
CMD snakemake
